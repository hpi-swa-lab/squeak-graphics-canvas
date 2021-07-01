Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'program',
		'vao',
		'quadVBO',
		'transformIndex',
		'clipRectIndex',
		'transformsTexture',
		'primHeadersFTexture',
		'gpuCacheTexture',
		'clipDataTexture',
		'instanceVBO',
		'instanceData',
		'instanceIndex'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:34'
}
RtBatchingRenderer >> allocateClipRect: aRectangle [

	^ (gpuCacheTexture
		add: aRectangle left asFloat
		add: aRectangle top asFloat
		add: aRectangle width asFloat
		add: aRectangle height asFloat) / 4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:39'
}
RtBatchingRenderer >> allocateRadius: aNumber [

	| r |
	r := aNumber asFloat.
	^ (clipDataTexture
		add: r
		add: r
		add: r
		add: r) / 4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 19:42'
}
RtBatchingRenderer >> allocateTransform: aTransform [

	^ (transformsTexture
		add: aTransform a11
		add: aTransform a21
		add: aTransform a12
		add: aTransform a22
		add: aTransform a13
		add: aTransform a23
		add: 0.0
		add: 0.0) / 8
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> clipRect [

	^ clipRect
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:20'
}
RtBatchingRenderer >> draw [

	GL clearColor: (Color h: Time utcMicrosecondClock / 1e3 \\ 360.0 s: 1.0 v: 1.0).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	primHeadersFTexture upload.
	transformsTexture upload.
	gpuCacheTexture upload.
	clipDataTexture upload.
	
	instanceVBO
		data: instanceData
		size: instanceIndex * instanceData bytesPerElement * 4.
	
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: instanceIndex]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:57'
}
RtBatchingRenderer >> frameAndFillRectangle: aRectangle radius: radius fillStyle: aFillStyle borderStyle: aBorderStyle [

	| left right top bottom |
	left := aRectangle left.
	right := aRectangle right.
	top := aRectangle top.
	bottom := aRectangle bottom.
	
	aFillStyle isTransparent ifFalse: [
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: bottom
			radius: radius
			solidColor: (aFillStyle isBitmapFill ifTrue: [aFillStyle form colorAt: 1@1] ifFalse: [aFillStyle asColor])].
	
	aBorderStyle isTransparent ifFalse: [
		| x |
		"left"
		x := aRectangle left + aBorderStyle width.
		x > left ifTrue: [
			self
				rectangleLeft: aRectangle left
				right: x
				top: top
				bottom: bottom
				radius: 0.0
				solidColor: aBorderStyle color].
		"right"
		x := aRectangle right - aBorderStyle width.
		x < right ifTrue: [
			self
				rectangleLeft: x
				right: aRectangle right
				top: top
				bottom: bottom
				radius: 0.0
				solidColor: aBorderStyle color].
		"top"
		x := aRectangle top + aBorderStyle width.
		x > top ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: aRectangle top
				bottom: x
				radius: 0.0
				solidColor: aBorderStyle color].
		x := aRectangle bottom - aBorderStyle width.
		"bottom"
		x < bottom ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: x
				bottom: aRectangle bottom
				radius: 0.0
				solidColor: aBorderStyle color]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:01'
}
RtBatchingRenderer >> index [

	^ instanceIndex
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:38'
}
RtBatchingRenderer >> initialize [

	instanceData := ExternalType uint32_t allocate: 512 squared // 2.
	
	GL enable: GL_BLEND.
	GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	"GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS."
	
	primHeadersFTexture := RtTexture extent: 512 @ 512.
	transformsTexture := RtTexture extent: 512 @ 512.
	gpuCacheTexture := RtTexture extent: 512 @ 512.
	clipDataTexture := RtTexture extent: 512 @ 512.
	
	program := GLProgram
					vertexSource: self solidRectangleVertexShader
					fragmentSource: self solidRectangleFragmentShader.
	program bind.
	
	primHeadersFTexture texture bindAt: 1.
	transformsTexture texture bindAt: 2.
	gpuCacheTexture texture bindAt: 3.
	clipDataTexture texture bindAt: 4.
	program uniforms
		sPrimHeadersF: 1;
		sTransforms: 2;
		sGPUCache: 3;
		sClipData: 4.
	
	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: self quadVertices.
	
	instanceVBO := GLBuffer create.
	instanceVBO usage: GL_DYNAMIC_DRAW size: instanceData size // 4.
	
	vao := GLVertexArray create.
	vao boundDuring: [
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexAttributeAt: program inputs aPosition location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		(vao vertexBufferBindingAt: 1)
			buffer: instanceVBO stride: instanceData bytesPerElement * 4;
			instanceDivisor: 1.
		
		(vao vertexAttributeAt: 1)
			enable;
			formatAsInteger: GL_UNSIGNED_INT numComponents: 4 offset: 0;
			associateVertexBufferBindingAt: 1].
	
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:08'
}
RtBatchingRenderer >> projectionMatrix: aMatrix4x4 [

	self flag: #todo. "receive bounds instead"
	program uniforms uProjectionMatrix: aMatrix4x4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/25/2021 14:35'
}
RtBatchingRenderer >> quadVertices [

	^ #(
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			0.0 0.0	"top-left"
			
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			1.0 1.0	"bottom-right"
		) asFloat32Array
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 22:05'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom radius: radius solidColor: aColor [

	| offset primHeaderIndex clipDataIndex |
	left >= right ifTrue: [^ self].
	top >= bottom ifTrue: [^ self].
	
	primHeaderIndex := (primHeadersFTexture
							add: left asFloat
							add: top asFloat
							add: (right - left) asFloat
							add: (bottom - top) asFloat
							add: aColor red
							add: aColor green
							add: aColor blue
							add: aColor alpha) / 8.
	clipDataIndex := (clipDataTexture
						add: instanceIndex asFloat
						add: radius asFloat
						add: 0.0
						add: 0.0) / 4.
	
	offset := instanceIndex * 4.
	instanceIndex := instanceIndex + 1.
	instanceData
		at: offset + 1 put: primHeaderIndex - 1;
		at: offset + 2 put: transformIndex - 1;
		at: offset + 3 put: clipRectIndex - 1;
		at: offset + 4 put: clipDataIndex - 1.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:58'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom solidColor: aColor [

	self rectangleLeft: left right: right top: top bottom: bottom radius: 0.0 solidColor: aColor
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/8/2021 10:35'
}
RtBatchingRenderer >> render: aPicture [

	self reset.
	self visit: aPicture.
	self draw.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:37'
}
RtBatchingRenderer >> reset [

	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	
	transformsTexture reset.
	gpuCacheTexture reset.
	primHeadersFTexture reset.
	clipDataTexture reset.
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	instanceIndex := 0.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/30/2021 19:28'
}
RtBatchingRenderer >> solidRectangleFragmentShader [

	^ '#version 330 core
in vec4 vFragColor;
in vec3 vClipParams;
in vec2 vLocalPos;

out vec4 color;

struct RectWithExtent {
		vec2 origin;
		vec2 extent;
};

float computeAARange(vec2 position) {
	vec2 w = fwidth(position);
	return inversesqrt(0.5 * dot(w, w));
}

float distanceAA(float aa_range, float signed_distance) {
	float dist = signed_distance * aa_range;
	return clamp(0.5 - dist, 0.0, 1.0);
}

float sd_box(in vec2 pos, in vec2 box_size) {
    vec2 d = abs(pos) - box_size;
    return length(max(d, vec2(0.0))) + min(max(d.x,d.y), 0.0);
}

float sd_rounded_box(in vec2 pos, in vec2 box_size, in float radius) {
    return sd_box(pos, box_size) - radius;
}

void main() {
	float aaRange = computeAARange(vLocalPos);
	float dist = sd_rounded_box(vLocalPos, vClipParams.xy, vClipParams.z);
	float alpha = distanceAA(aaRange, dist);

	color = vec4(vFragColor.rgb, vFragColor.a * alpha);
}'
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:49'
}
RtBatchingRenderer >> solidRectangleVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aData;

out vec4 vFragColor;
out vec3 vClipParams;
out vec2 vLocalPos;

// uniform sampler2D sPrimitiveHeadersI;
uniform sampler2D sPrimHeadersF;
uniform sampler2D sClipData;
uniform sampler2D sTransforms;
uniform sampler2D sGPUCache;

uniform mat4 uProjectionMatrix; //orthographic projection

#define MAX_VERTEX_TEXTURE_WIDTH 512u
#define VECS_PER_PRIMITIVE_HEADER_F 2u
#define VECS_PER_TRANSFORM 2u

ivec2 getGPUCacheFetchAddress(int index) {
    return ivec2(uint(index) % MAX_VERTEX_TEXTURE_WIDTH,
                 uint(index) / MAX_VERTEX_TEXTURE_WIDTH);
}

vec4 fetchFromGPUCache1(int index) {
    ivec2 address = getGPUCacheFetchAddress(index);
    return texelFetch(sGPUCache, address, 0);
}

ivec2 getFetchAddress(int index, uint vecsPerIndex) {
	return ivec2(int(vecsPerIndex * (uint(index) % (MAX_VERTEX_TEXTURE_WIDTH / vecsPerIndex))),
								int(uint(index) / (MAX_VERTEX_TEXTURE_WIDTH / vecsPerIndex)));
}

struct RectWithExtent {
		vec2 origin;
		vec2 extent;
};

RectWithExtent intersect(RectWithExtent a, RectWithExtent b) {
    RectWithExtent result;
    result.origin = max(a.origin, b.origin);
    result.extent = min(a.origin + a.extent, b.origin + b.extent) - result.origin;

    return result;
}

struct Instance
{
    int primitiveHeaderIndex;
    int transformIndex;
		int clipIndex;
		int clipDataIndex;
};

Instance decodeInstanceAttributes() {
    Instance instance;

    instance.primitiveHeaderIndex = aData.x;
    instance.transformIndex = aData.y;
		instance.clipIndex = aData.z;
		instance.clipDataIndex = aData.w;

    return instance;
}

struct PrimitiveHeader {
    RectWithExtent localRect;
    // RectWithExtent localClipRect;
		vec4 color;
};

PrimitiveHeader fetchPrimHeader(int primitiveIndex) {
	PrimitiveHeader primHeader;

	ivec2 addressF = getFetchAddress(primitiveIndex, VECS_PER_PRIMITIVE_HEADER_F);
	vec4 localRect = texelFetch(sPrimHeadersF, addressF, 0);
	vec4 color = texelFetchOffset(sPrimHeadersF, addressF, 0, ivec2(1, 0));
	primHeader.localRect = RectWithExtent(localRect.xy, localRect.zw);
	primHeader.color = color;

	return primHeader;
}

mat4 fetchTransform(int transformIndex) {
	ivec2 address = getFetchAddress(transformIndex, VECS_PER_TRANSFORM);
	vec4 t1 = texelFetch(sTransforms, address, 0);
	vec4 t2 = texelFetchOffset(sTransforms, address, 0, ivec2(1, 0));
	return mat4x4(
					t1[0], t1[1], 0.0, 0.0,
					t1[2], t1[3], 0.0, 0.0,
					0.0, 0.0, 1.0, 0.0,
					t2[0], t2[1], 0.0, 1.0);
}

vec4 fetchClipData(int index) {
    ivec2 address = getFetchAddress(index, 1u);
    return texelFetch(sClipData, address, 0);
}

void main() {
	Instance instance = decodeInstanceAttributes();

	PrimitiveHeader primHeader = fetchPrimHeader(instance.primitiveHeaderIndex);
	mat4x4 transform = fetchTransform(instance.transformIndex);
	vec4 clip = fetchFromGPUCache1(instance.clipIndex);
	vec4 clipData = fetchClipData(instance.clipDataIndex);
	RectWithExtent localClipRect = RectWithExtent(clip.xy, clip.zw);
	RectWithExtent clippedRect = intersect(primHeader.localRect, localClipRect);
	float z = clipData.x;
	float radius = clipData.y;
	
	vec2 pos = clippedRect.origin + (aPosition * clippedRect.extent);

	gl_Position = uProjectionMatrix * transform * vec4(pos, z, 1.0);
	vFragColor = primHeader.color;

	vec2 halfExtent = 0.5 * primHeader.localRect.extent;
	vLocalPos = (aPosition - 0.5) * primHeader.localRect.extent;
	vClipParams = vec3(halfExtent - vec2(radius), radius);
}'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> transform [

	^ transform
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/21/2021 16:43'
}
RtBatchingRenderer >> visitClip: aClip [

	| previousClipRect previousClipRectIndex |
	previousClipRect := clipRect.
	previousClipRectIndex := clipRectIndex.
	
	clipRect := clipRect intersect: aClip clipRect.
	clipRectIndex := self allocateClipRect: clipRect.
	
	self visitGroup: aClip.
	
	clipRect := previousClipRect.
	clipRectIndex := previousClipRectIndex.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/19/2021 10:26'
}
RtBatchingRenderer >> visitGroup: aGroup [

	aGroup children do: [:child |
		child acceptVisitor: self]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:54'
}
RtBatchingRenderer >> visitImage: anImage [

	| form color |
	form := anImage form.
	color := Color red.
	"color := (form colorAt: 1@1).
	color isTransparent ifTrue: [
		color := form colorAt: form extent // 2]."
	self
		frameAndFillRectangle: anImage bounds
		radius: 0.0
		fillStyle: (SolidFillStyle color: color)
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:55'
}
RtBatchingRenderer >> visitOval: anOval [

	self
		frameAndFillRectangle: anOval bounds
		radius: 0.0
		fillStyle: anOval fillStyle
		borderStyle: anOval borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:40'
}
RtBatchingRenderer >> visitParagraph: aCommand [

	"| paragraph scanner |
	paragraph := aCommand paragraph.
	scanner := GLCanvasDisplayScanner new
		text: paragraph text
		textStyle: paragraph textStyle
		foreground: aCommand color
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	paragraph displayOn: self using: scanner at: aCommand bounds topLeft."
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:55'
}
RtBatchingRenderer >> visitPolygon: aPolygon [

	self
		frameAndFillRectangle: aPolygon estimatedBounds
		radius: 0.0
		fillStyle: aPolygon fillStyle
		borderStyle: aPolygon borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 21:55'
}
RtBatchingRenderer >> visitRectangle: anObject [

	self
		frameAndFillRectangle: anObject bounds
		radius: 0.0
		fillStyle: anObject fillStyle
		borderStyle: anObject borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 7/1/2021 22:09'
}
RtBatchingRenderer >> visitRoundedRectangle: aRoundedRectangle [

	self
		frameAndFillRectangle: aRoundedRectangle bounds
		radius: aRoundedRectangle radius
		fillStyle: aRoundedRectangle fillStyle
		borderStyle: aRoundedRectangle borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:46'
}
RtBatchingRenderer >> visitString: aCommand [

	| font left top bottom bounds visibleLeft visibleTop visibleRight visibleBottom |
	font := aCommand font ifNil: [TextStyle defaultFont].
	bounds := aCommand bounds.
	
	top := bounds top.
	visibleTop := top max: clipRect top.
	bottom := bounds bottom.
	visibleBottom := (bottom min: top + font height) min: clipRect bottom.
	visibleTop >= visibleBottom ifTrue: [^ self].
	
	left := bounds left.
	visibleLeft := left max: clipRect left.
	visibleRight := bounds right min: clipRect right.
	visibleLeft >= visibleRight ifTrue: [^ self].
	
	aCommand from to: aCommand to do: [:index |
		| char width right |
		char := aCommand contents at: index.
		width := font widthOf: char.
		right := (left + width) min: visibleRight.
		self
			rectangleLeft: (left max: visibleLeft)
			right: right
			top: visibleTop
			bottom: visibleBottom
			solidColor: aCommand color.
		left := left + width.
		left >= visibleRight ifTrue: [^ self]]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/21/2021 16:42'
}
RtBatchingRenderer >> visitTransform: aTransform [

	| previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	previousTransform := transform.
	previousClipRect := clipRect.
	previousTransformIndex := transformIndex.
	previousClipRectIndex := clipRectIndex.
	
	transform := transform * aTransform matrix.
	clipRect := (transform globalBoundsToLocal: clipRect) expanded.
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	
	self visitGroup: aTransform.
	
	transform := previousTransform.
	clipRect := previousClipRect.
	transformIndex := previousTransformIndex.
	clipRectIndex := previousClipRectIndex.
]
