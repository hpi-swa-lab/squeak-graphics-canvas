Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'program',
		'vao',
		'quadVBO',
		'stride',
		'elementSize',
		'numElements',
		'transformIndex',
		'clipRectIndex',
		'transformsData',
		'transformsTexture',
		'primHeadersFData',
		'primHeadersFTexture',
		'gpuCacheData',
		'gpuCacheTexture',
		'lastTransformIndex',
		'lastGPUCacheIndex',
		'lastPrimHeaderIndex',
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
	#'squeak_changestamp' : 'stlu 6/21/2021 16:39'
}
RtBatchingRenderer >> allocateClipRect: aRectangle [

	| offset |
	offset := lastGPUCacheIndex * 4.
	lastGPUCacheIndex := lastGPUCacheIndex + 1.
	
	gpuCacheData
		startingAt: offset + 1
		put: aRectangle left asFloat
		put: aRectangle top asFloat
		put: aRectangle width asFloat
		put: aRectangle height asFloat.
	
	^ lastGPUCacheIndex
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/21/2021 16:39'
}
RtBatchingRenderer >> allocateTransform: aTransform [

	| offset |
	offset := lastTransformIndex * 8.
	lastTransformIndex := lastTransformIndex + 1.
	
	transformsData
		startingAt: offset + 1
		put: aTransform a11
		put: aTransform a21
		put: aTransform a12
		put: aTransform a22
		put: aTransform a13
		put: aTransform a23.
	
	^ lastTransformIndex
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
	#'squeak_changestamp' : 'stlu 6/21/2021 17:00'
}
RtBatchingRenderer >> draw [

	GL clearColor: Color cyan."(Color r: 0.1 g: 0.1 b: 0.1 alpha: 1.0)."
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	primHeadersFTexture
		extent: 512 @ 512
		internalFormat: GL_RGBA32F
		data: primHeadersFData
		format: GL_RGBA
		type: GL_FLOAT.
	
	transformsTexture
		extent: 512 @ 512
		internalFormat: GL_RGBA32F
		data: transformsData
		format: GL_RGBA
		type: GL_FLOAT.
	
	gpuCacheTexture
		extent: 512 @ 512
		internalFormat: GL_RGBA32F
		data: gpuCacheData
		format: GL_RGBA
		type: GL_FLOAT.
	
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
	#'squeak_changestamp' : 'stlu 6/21/2021 17:33'
}
RtBatchingRenderer >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	| left right top bottom |
	left := aRectangle left max: clipRect left.
	right := aRectangle right min: clipRect right.
	top := aRectangle top max: clipRect top.
	bottom := aRectangle bottom min: clipRect bottom.
	
	aFillStyle isTransparent ifFalse: [
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: bottom
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
				solidColor: aBorderStyle color].
		"right"
		x := aRectangle right - aBorderStyle width.
		x < right ifTrue: [
			self
				rectangleLeft: x
				right: aRectangle right
				top: top
				bottom: bottom
				solidColor: aBorderStyle color].
		"top"
		x := aRectangle top + aBorderStyle width.
		x > top ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: aRectangle top
				bottom: x
				solidColor: aBorderStyle color].
		x := aRectangle bottom - aBorderStyle width.
		"bottom"
		x < bottom ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: x
				bottom: aRectangle bottom
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
	#'squeak_changestamp' : 'stlu 6/21/2021 17:26'
}
RtBatchingRenderer >> initialize [

	primHeadersFData := ExternalType float allocate: 512 squared * 4"numElements * elementSize".
	transformsData := ExternalType float allocate: 512 squared * 4.
	gpuCacheData := ExternalType float allocate: 512 squared * 4.
	instanceData := ExternalType uint32_t allocate: 512 squared // 2.
	
	GL enable: GL_BLEND.
	GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	"GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS."
	
	primHeadersFTexture := GLTexture2D create.
	primHeadersFTexture
		wrapS: GL_REPEAT;
		wrapT: GL_REPEAT;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR;
		bindAt: 0.
	
	transformsTexture := GLTexture2D create.
	transformsTexture
		wrapS: GL_REPEAT;
		wrapT: GL_REPEAT;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR;
		bindAt: 1.
	
	gpuCacheTexture := GLTexture2D create.
	gpuCacheTexture
		wrapS: GL_REPEAT;
		wrapT: GL_REPEAT;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR;
		bindAt: 2.
	
	program := GLProgram
					vertexSource: self solidRectangleVertexShader
					fragmentSource: self solidRectangleFragmentShader.
	program bind.
	program uniforms
		sPrimHeadersF: 0;
		sTransforms: 1;
		sGPUCache: 2.
	
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
	#'squeak_changestamp' : 'stlu 5/21/2021 15:45'
}
RtBatchingRenderer >> rectangle: aRectangle solidColor: aColor [

	self
		rectangleLeft: aRectangle left
		right: aRectangle right
		top: aRectangle top
		bottom: aRectangle bottom
		solidColor: aColor
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/21/2021 17:12'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom solidColor: aColor [

	| offset |
	left >= right ifTrue: [^ self].
	top >= bottom ifTrue: [^ self].
	
	offset := lastPrimHeaderIndex * 8.
	lastPrimHeaderIndex := lastPrimHeaderIndex + 1.
	
	primHeadersFData
		startingAt: offset + 1
		put: left asFloat
		put: top asFloat
		put: (right - left) asFloat
		put: (bottom - top) asFloat
		put: aColor red
		put: aColor green
		put: aColor blue
		put: aColor alpha.
	
	offset := instanceIndex * 4.
	instanceIndex := instanceIndex + 1.
	
	instanceData
		at: offset + 1 put: lastPrimHeaderIndex - 1;
		at: offset + 2 put: transformIndex - 1;
		at: offset + 3 put: clipRectIndex - 1;
		at: offset + 4 put: instanceIndex.
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
	#'squeak_changestamp' : 'stlu 6/21/2021 17:00'
}
RtBatchingRenderer >> reset [

	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	
	lastPrimHeaderIndex := 0.
	lastGPUCacheIndex := 0.
	lastTransformIndex := 0.
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	instanceIndex := 0.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/21/2021 15:52'
}
RtBatchingRenderer >> solidRectangleFragmentShader [

	^ '#version 330 core
in vec4 oFragColor;

out vec4 color;

void main() {
	color = oFragColor;
}'
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/21/2021 16:03'
}
RtBatchingRenderer >> solidRectangleVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aData;

out vec4 oFragColor;

// uniform sampler2D sPrimitiveHeadersI;
uniform sampler2D sPrimHeadersF;
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
		int z;
};

Instance decodeInstanceAttributes() {
    Instance instance;

    instance.primitiveHeaderIndex = aData.x;
    instance.transformIndex = aData.y;
		instance.clipIndex = aData.z;
		instance.z = aData.w;

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
	ivec2 index = getFetchAddress(transformIndex, VECS_PER_TRANSFORM);
	vec4 t1 = texelFetch(sTransforms, index, 0);
	vec4 t2 = texelFetchOffset(sTransforms, index, 0, ivec2(1, 0));
	return mat4x4(
					t1[0], t1[1], 0.0, 0.0,
					t1[2], t1[3], 0.0, 0.0,
					0.0, 0.0, 1.0, 0.0,
					t2[0], t2[1], 0.0, 1.0);
}

void main() {
	Instance instance = decodeInstanceAttributes();

	PrimitiveHeader primHeader = fetchPrimHeader(instance.primitiveHeaderIndex);
	mat4x4 transform = fetchTransform(instance.transformIndex);
	vec4 clipData = fetchFromGPUCache1(instance.clipIndex);
	RectWithExtent localClipRect = RectWithExtent(clipData.xy, clipData.zw);
	RectWithExtent clippedRect = intersect(primHeader.localRect, localClipRect);
	
	vec2 pos = clippedRect.origin + (aPosition * clippedRect.extent);

	gl_Position = uProjectionMatrix * transform * vec4(pos, instance.z, 1.0);
	oFragColor = primHeader.color;
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
	#'squeak_changestamp' : 'stlu 6/8/2021 14:54'
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
		fillStyle: (SolidFillStyle color: color)
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:32'
}
RtBatchingRenderer >> visitOval: anOval [

	self
		frameAndFillRectangle: anOval bounds
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
	#'squeak_changestamp' : 'stlu 6/17/2021 15:15'
}
RtBatchingRenderer >> visitPolygon: aPolygon [

	self
		frameAndFillRectangle: aPolygon estimatedBounds
		fillStyle: aPolygon fillStyle
		borderStyle: aPolygon borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:45'
}
RtBatchingRenderer >> visitRectangle: anObject [

	self
		frameAndFillRectangle: anObject bounds
		fillStyle: anObject fillStyle
		borderStyle: anObject borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:33'
}
RtBatchingRenderer >> visitRoundedRectangle: aRoundedRectangle [

	self
		frameAndFillRectangle: aRoundedRectangle bounds
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
