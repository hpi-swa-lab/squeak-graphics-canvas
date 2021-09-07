Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'bounds',
		'opaqueRectangleBatch',
		'rectangleBatch',
		'transformIndex',
		'clipRectIndex',
		'zIndex',
		'currentFrame',
		'transientStoreF',
		'transientStoreI',
		'persistentStoreF',
		'rectangleProgram',
		'textProgram',
		'colorStore',
		'vao',
		'quadVBO',
		'colorToIndexTable',
		'glyphStore',
		'fontCache',
		'textBatch',
		'textureUploadTimeQueries'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:30'
}
RtBatchingRenderer >> allocateClipRect: aRectangle [

	^ transientStoreF
		add: aRectangle left asFloat
		add: aRectangle top asFloat
		add: aRectangle right asFloat
		add: aRectangle bottom asFloat
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/23/2021 16:54'
}
RtBatchingRenderer >> allocateTransform: aTransform [

	^ transientStoreF
		add: aTransform a11
		add: aTransform a21
		add: aTransform a12
		add: aTransform a22
		add: aTransform a13
		add: aTransform a23
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:09'
}
RtBatchingRenderer >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 7/7/2021 16:08'
}
RtBatchingRenderer >> bounds: aRectangle [

	bounds := aRectangle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 09:51'
}
RtBatchingRenderer >> clearColor [

	^ Color
		h: Time utcMicrosecondClock / 1e3 \\ 360.0
		s: 1.0
		v: 1.0
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 15:16'
}
RtBatchingRenderer >> clipRectIndex [

	^ clipRectIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:31'
}
RtBatchingRenderer >> currentFrame [

	^ currentFrame
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:31'
}
RtBatchingRenderer >> currentFrame: anObject [

	currentFrame := anObject.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/6/2021 14:14'
}
RtBatchingRenderer >> draw [

	GL clearColor: self clearColor.
	GL depthMask: GL_TRUE.
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	transientStoreF texture bindAt: 1.
	transientStoreI texture bindAt: 2.
	persistentStoreF texture bindAt: 3.
	colorStore texture bindAt: 5.
	glyphStore texture bindAt: 6.
	
	"(textureUploadTimeQueries addLast: GLTimeElapsedQuery create) during: ["
		transientStoreF upload.
		transientStoreI upload.
		persistentStoreF upload.
		colorStore upload"]".
	
	rectangleProgram uniforms uProjectionMatrix: self projectionMatrix.
	textProgram uniforms uProjectionMatrix: self projectionMatrix.
	
	opaqueRectangleBatch isAlpha: false.
	opaqueRectangleBatch draw.
	
	rectangleBatch isAlpha: true.
	rectangleBatch draw.
	
	textBatch isAlpha: true.
	textBatch draw.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 13:25'
}
RtBatchingRenderer >> fontCache [

	^ fontCache
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 15:03'
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
		| borderWidth |
		borderWidth := aBorderStyle width.
		"left"
		self
			rectangleLeft: left
			right: left + borderWidth
			top: top
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color.
		"right"
		self
			rectangleLeft: right - borderWidth
			right: right
			top: top
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color.
		"top"
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: top + borderWidth
			radius: 0.0
			solidColor: aBorderStyle color.
		"bottom"
		self
			rectangleLeft: left
			right: right
			top: bottom - borderWidth
			bottom: bottom
			radius: 0.0
			solidColor: aBorderStyle color].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:00'
}
RtBatchingRenderer >> glyphStore [

	^ glyphStore
]

{
	#category : #allocation,
	#'squeak_changestamp' : 'stlu 8/25/2021 10:42'
}
RtBatchingRenderer >> indexForColor: aColor [

	^ colorToIndexTable
		at: aColor
		ifAbsentPut: [
			colorStore add: (aColor pixelValueForDepth: 32)]
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 13:25'
}
RtBatchingRenderer >> initialize [

	self initializeGPUStores.
	self initializeQuadVBO.
	self initializeVAO.
	self initializePrograms.
	self initializeBatches.
	self initializeColors.
	
	fontCache := IdentityDictionary new.
	
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:22'
}
RtBatchingRenderer >> initializeBatches [

	opaqueRectangleBatch := RtRectangleBatch new.
	opaqueRectangleBatch renderer: self.

	rectangleBatch := RtRectangleBatch new.
	rectangleBatch renderer: self.
	
	textBatch := RtTextBatch new.
	textBatch renderer: self.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/25/2021 10:42'
}
RtBatchingRenderer >> initializeColors [

	colorToIndexTable := Dictionary new.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 11:32'
}
RtBatchingRenderer >> initializeGPUStores [

	| texSize |
	self flag: #todo. "choose texSize based on GL maxTextureSize"
	texSize := 512. "square textures have performance benefits on Intel GPUs"
	transientStoreF := RtFloat4Texture extent: texSize @ texSize.
	transientStoreI := RtInt4Texture extent: texSize @ texSize.
	persistentStoreF := RtFloat4Texture extent: texSize @ texSize.
	colorStore := RtColorTexture extent: texSize @ texSize.
	glyphStore := RtManagedGPUStore extent: texSize @ texSize.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 11:33'
}
RtBatchingRenderer >> initializePrograms [

	rectangleProgram := GLProgram
		vertexSource: self rectangleVertexShader
		fragmentSource: self rectangleFragmentShader.
	rectangleProgram uniforms
		sTransientStoreF: 1;
		sColorStore: 5.
	
	textProgram := GLProgram
		vertexSource: self textVertexShader
		fragmentSource: self textFragmentShader.
	textProgram uniforms
		sTransientStoreF: 1;
		sTransientStoreI: 2;
		sPersistentStoreF: 3;
		sColorStore: 5;
		sGlyphStore: 6.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:04'
}
RtBatchingRenderer >> initializeQuadVBO [

	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: #(
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			0.0 0.0	"top-left"
			
			0.0 1.0	"bottom-left"
			1.0 0.0	"top-right"
			1.0 1.0	"bottom-right"
		) asFloat32Array.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:04'
}
RtBatchingRenderer >> initializeVAO [

	vao := GLVertexArray create.
	vao boundDuring: [
		(vao vertexAttributeAt: 0)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		(vao vertexAttributeAt: 1)
			enable;
			formatAsInteger: GL_UNSIGNED_INT numComponents: 4 offset: 0;
			associateVertexBufferBindingAt: 1.
		
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexBufferBindingAt: 1) instanceDivisor: 1].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:01'
}
RtBatchingRenderer >> persistentStoreF [

	^ persistentStoreF
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:59'
}
RtBatchingRenderer >> projectionMatrix [

	^ Matrix4x4
		ortho: bounds
		near: -1000000 far: 0
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
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/23/2021 10:24'
}
RtBatchingRenderer >> rectangleFragmentShader [

	^ '#version 330 core
in vec4 vFillColor;
in vec2 vExtent;
in float vCornerRadius;
in vec2 vCenterOffset;

out vec4 oColor;

struct RectWithExtent {
		vec2 origin;
		vec2 extent;
};

float computeAARange(vec2 position) {
	vec2 w = fwidth(position);
	return inversesqrt(0.5 * dot(w, w));
}

float distanceAA(float aaRange, float signedDistance) {
	float dist = signedDistance * aaRange;
	return clamp(0.5 - dist, 0.0, 1.0);
}

float signedDistanceRectangle(vec2 localPoint, vec2 extent) {
	vec2 d = abs(localPoint) - extent;
	return length(max(d, vec2(0.0))) + min(max(d.x,d.y), 0.0);
}

float signedDistanceRoundedRectangle(vec2 localPoint, vec2 extent, float radius) {
	return signedDistanceRectangle(localPoint, extent) - radius;
}

void main() {
	float aaRange = computeAARange(vCenterOffset);
	float dist = signedDistanceRoundedRectangle(vCenterOffset, vExtent, vCornerRadius);
	vec4 color = vFillColor;
	float alpha = distanceAA(aaRange, dist);

	oColor = vec4(color.rgb, color.a * alpha);
}'
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:48'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom radius: radius solidColor: aColor [

	(left > clipRect right
		or: [right < clipRect left]
		or: [top > clipRect bottom]
		or: [bottom < clipRect top]) ifTrue: [^ self].
	(left > right
		or: [top > bottom]) ifTrue: [^ self].
	(aColor isTranslucent or: [radius isZero not])
		ifTrue: [
			rectangleBatch
				rectangleLeft: left
				right: right
				top: top
				bottom: bottom
				radius: radius
				fillColor: aColor]
		ifFalse: [
			opaqueRectangleBatch
				rectangleLeft: left
				right: right
				top: top
				bottom: bottom
				radius: radius
				fillColor: aColor].
	zIndex := zIndex + 1.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:06'
}
RtBatchingRenderer >> rectangleProgram [

	^ rectangleProgram
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:14'
}
RtBatchingRenderer >> rectangleVertexShader [

	^ '#version 330 core
#define MAX_VERTEX_TEXTURE_WIDTH 512u

layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec4 vFillColor;
out float vCornerRadius;
out vec2 vExtent;
out vec2 vCenterOffset;

// uniform sampler2D sPersistentStoreF;
// uniform isampler2D sPersistentStoreI;
uniform sampler2D sTransientStoreF;
uniform isampler2D sTransientStoreI;
// uniform sampler2D sGlyphStore;
uniform sampler2D sColorStore;

uniform mat4 uProjectionMatrix; //orthographic projection

ivec2 getFetchAddress(int index) {
    return ivec2(uint(index) % MAX_VERTEX_TEXTURE_WIDTH,
                 uint(index) / MAX_VERTEX_TEXTURE_WIDTH);
}

struct Rectangle {
	vec2 origin;
	vec2 corner;
};

Rectangle intersect(Rectangle a, Rectangle b) {
	Rectangle result;
	result.origin = max(a.origin, b.origin);
	result.corner = min(a.corner, b.corner);
	return result;
}

vec2 extent(Rectangle r) {
	return r.corner - r.origin;
}

mat4 fetchTransform(sampler2D store, int index) {
	ivec2 address1 = getFetchAddress(index);
	ivec2 address2 = getFetchAddress(index+1);
	vec4 t1 = texelFetch(store, address1, 0);
	vec4 t2 = texelFetch(store, address2, 0);
	return mat4x4(
		t1[0], t1[1], 0.0, 0.0,
		t1[2], t1[3], 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		t2[0], t2[1], 0.0, 1.0);
}

Rectangle fetchRectangle(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	vec4 data = texelFetch(store, address, 0);
	return Rectangle(data.xy, data.zw);
}

ivec4 fetch(isampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

vec4 fetch(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

void main() {
	/* Fetch data */
	int rectangleIndex = aInstanceData.x;
	int clipRectIndex = aInstanceData.y;
	int transformIndex = aInstanceData.z;
	int fillColorIndex = aInstanceData.w;

	Rectangle rectangleBounds = fetchRectangle(sTransientStoreF, rectangleIndex);
	vec4 rectangleData = fetch(sTransientStoreF, rectangleIndex+1);
	vCornerRadius = rectangleData.x;
	float z = rectangleData.y;

	Rectangle clipRect = fetchRectangle(sTransientStoreF, clipRectIndex);
	mat4 modelMatrix = fetchTransform(sTransientStoreF, transformIndex);
	vFillColor = fetch(sColorStore, fillColorIndex);
	
	/* Processing */
	Rectangle visibleBounds = intersect(rectangleBounds, clipRect);

	vec2 vertexPosition = visibleBounds.origin + (aPosition * extent(visibleBounds));
	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);

	vec2 halfExtent = 0.5 * extent(rectangleBounds);
	vExtent = halfExtent - vec2(vCornerRadius);
	vCenterOffset = (aPosition - 0.5) * extent(rectangleBounds);
}'
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/8/2021 10:35'
}
RtBatchingRenderer >> render: aPicture [

	self reset.
	self visit: aPicture.
	self draw.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:06'
}
RtBatchingRenderer >> reset [

	transientStoreF reset.
	transientStoreI reset.
	
	self flag: #todo. "reset to bounds"
	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	zIndex := 1.
	
	rectangleBatch reset.
	textBatch reset.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 8/26/2021 18:00'
}
RtBatchingRenderer >> textFragmentShader [

	^ '#version 330 core
in vec4 vTextColor;
in vec2 vGlyphCoords;

out vec4 oColor;

uniform sampler2D sGlyphStore;

void main() {
	vec4 texel = texture(sGlyphStore, vGlyphCoords);
	float alpha = 1.0 - texel.r;
	oColor = vTextColor * alpha;
}'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/25/2021 10:41'
}
RtBatchingRenderer >> textProgram [

	^ textProgram
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:12'
}
RtBatchingRenderer >> textVertexShader [

	^ '#version 330 core
#define MAX_VERTEX_TEXTURE_WIDTH 512u

layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

out vec4 vTextColor;
out vec2 vGlyphCoords;

uniform sampler2D sPersistentStoreF;
// uniform isampler2D sPersistentStoreI;
uniform sampler2D sTransientStoreF;
uniform isampler2D sTransientStoreI;
// uniform sampler2D sGlyphStore;
uniform sampler2D sColorStore;

uniform mat4 uProjectionMatrix; //orthographic projection

ivec2 getFetchAddress(int index) {
    return ivec2(uint(index) % MAX_VERTEX_TEXTURE_WIDTH,
                 uint(index) / MAX_VERTEX_TEXTURE_WIDTH);
}

struct Rectangle {
	vec2 origin;
	vec2 corner;
};

Rectangle intersect(Rectangle a, Rectangle b) {
	Rectangle result;
	result.origin = max(a.origin, b.origin);
	result.corner = min(a.corner, b.corner);
	return result;
}

vec2 extent(Rectangle r) {
	return r.corner - r.origin;
}

mat4 fetchTransform(sampler2D store, int index) {
	ivec2 address1 = getFetchAddress(index);
	ivec2 address2 = getFetchAddress(index+1);
	vec4 t1 = texelFetch(store, address1, 0);
	vec4 t2 = texelFetch(store, address2, 0);
	return mat4x4(
		t1[0], t1[1], 0.0, 0.0,
		t1[2], t1[3], 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		t2[0], t2[1], 0.0, 1.0);
}

Rectangle fetchRectangle(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	vec4 data = texelFetch(store, address, 0);
	return Rectangle(data.xy, data.zw);
}

ivec4 fetch(isampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

vec4 fetch(sampler2D store, int index) {
	ivec2 address = getFetchAddress(index);
	return texelFetch(store, address, 0);
}

void main() {
	/* Fetch data */
	int textRunIndex = aInstanceData.x;
	int charIndex = aInstanceData.y;
	int glyphIndex = aInstanceData.z;
	float z = float(aInstanceData.w);

	ivec4 textRun = fetch(sTransientStoreI, textRunIndex);
	int clipRectIndex = textRun.x;
	int transformIndex = textRun.y;
	int textColorIndex = textRun.z;
	int textRunBoundsIndex = textRun.w;

	Rectangle clipRect = fetchRectangle(sTransientStoreF, clipRectIndex);
	mat4 modelMatrix = fetchTransform(sTransientStoreF, transformIndex);
	vTextColor = fetch(sColorStore, textColorIndex);
	Rectangle textRunBounds = fetchRectangle(sTransientStoreF, textRunBoundsIndex);

	int charDataIndex = textRunBoundsIndex + 1 + int(uint(charIndex) >> 2);
	vec4 charData = fetch(sTransientStoreF, charDataIndex);
	float charRightOffset = charData[uint(charIndex) % 4U];

	Rectangle glyphBounds = fetchRectangle(sPersistentStoreF, glyphIndex);

	/* Processing */
	vec2 charExtent = extent(glyphBounds);
	vec2 charOffset = textRunBounds.origin + vec2(charRightOffset - charExtent.x, 0.0);
	Rectangle charBounds = Rectangle(charOffset, charOffset + charExtent);
	Rectangle visibleBounds = intersect(clipRect, charBounds);
	
	vec2 vertexPosition = visibleBounds.origin + (aPosition * extent(visibleBounds));
	gl_Position = uProjectionMatrix * modelMatrix * vec4(vertexPosition, z, 1.0);

	vec2 relativeGlyphPosition = (vertexPosition - charBounds.origin) / charExtent;
	vGlyphCoords = glyphBounds.origin + (extent(glyphBounds) * relativeGlyphPosition);
	vGlyphCoords = vGlyphCoords / MAX_VERTEX_TEXTURE_WIDTH;
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
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 15:16'
}
RtBatchingRenderer >> transformIndex [

	^ transformIndex
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:17'
}
RtBatchingRenderer >> transientStoreF [

	^ transientStoreF
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:12'
}
RtBatchingRenderer >> transientStoreI [

	^ transientStoreI
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/23/2021 17:18'
}
RtBatchingRenderer >> vao [

	^ vao
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/26/2021 13:34'
}
RtBatchingRenderer >> visitClip: aPicClip [

	| previousClipRect previousClipRectIndex |
	previousClipRect := clipRect.
	(clipRect := clipRect intersect: aPicClip clipRect) hasPositiveExtent ifTrue: [
		previousClipRectIndex := clipRectIndex.
		clipRectIndex := self allocateClipRect: clipRect.
		self visitGroup: aPicClip.
		clipRectIndex := previousClipRectIndex].
	clipRect := previousClipRect.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/26/2021 13:43'
}
RtBatchingRenderer >> visitGroup: aPicGroup [

	aPicGroup children do: [:child |
		child acceptVisitor: self].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitImage: aPicImage [

	| form color |
	form := aPicImage form.
	color := Color red.
	"color := (form colorAt: 1@1).
	color isTransparent ifTrue: [
		color := form colorAt: form extent // 2]."
	self
		frameAndFillRectangle: aPicImage bounds
		radius: 0.0
		fillStyle: (SolidFillStyle color: color)
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:48'
}
RtBatchingRenderer >> visitMorph: aPicMorph [

	| dist |
	self visitGroup: aPicMorph.
	dist := currentFrame - aPicMorph invalidationStamp.
	dist < 15 ifTrue: [
		| color |
		color := Color green alpha: (15 - dist) / 15.0.
		self
			frameAndFillRectangle: aPicMorph bounds
			radius: 0.0
			fillStyle: (SolidFillStyle color: Color transparent)
			borderStyle: (SimpleBorder width: 1 color: color)].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitOval: aPicOval [

	self
		frameAndFillRectangle: aPicOval bounds
		radius: 0.0
		fillStyle: aPicOval fillStyle
		borderStyle: aPicOval borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:05'
}
RtBatchingRenderer >> visitParagraph: aPicParagraph [

	"| paragraph scanner |
	paragraph := aPicParagraph paragraph.
	scanner := GLCanvasDisplayScanner new
		text: paragraph text
		textStyle: paragraph textStyle
		foreground: aPicParagraph color
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	paragraph displayOn: self using: scanner at: aPicParagraph bounds topLeft."
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:03'
}
RtBatchingRenderer >> visitPolygon: aPicPolygon [

	self
		frameAndFillRectangle: aPicPolygon estimatedBounds
		radius: 0.0
		fillStyle: aPicPolygon fillStyle
		borderStyle: aPicPolygon borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:04'
}
RtBatchingRenderer >> visitRectangle: aPicRectangle [

	self
		frameAndFillRectangle: aPicRectangle bounds
		radius: 0.0
		fillStyle: aPicRectangle fillStyle
		borderStyle: aPicRectangle borderStyle
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 8/12/2021 13:04'
}
RtBatchingRenderer >> visitRoundedRectangle: aPicRoundedRectangle [

	self
		frameAndFillRectangle: aPicRoundedRectangle bounds
		radius: aPicRoundedRectangle radius
		fillStyle: aPicRoundedRectangle fillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/1/2021 14:53'
}
RtBatchingRenderer >> visitString: aPicString [

	| bounds stringClip |
	"true ifTrue: [^ self]."
	bounds := aPicString bounds ifNil: [^ self].
	stringClip := bounds intersect: clipRect.
	stringClip hasPositiveExtent ifFalse: [^ self].
	
	textBatch textRun: aPicString in: stringClip.
	zIndex := zIndex + 1.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 9/1/2021 13:38'
}
RtBatchingRenderer >> visitTransform: aPicTransform [

	| previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	previousTransform := transform.
	previousClipRect := clipRect.
	transform := transform * aPicTransform matrix.
	(clipRect := (aPicTransform matrix globalBoundsToLocal: clipRect) expanded) hasPositiveExtent ifTrue: [
		previousTransformIndex := transformIndex.
		previousClipRectIndex := clipRectIndex.
		transformIndex := self allocateTransform: transform.
		clipRectIndex := self allocateClipRect: clipRect.
		self visitGroup: aPicTransform.
		transformIndex := previousTransformIndex.
		clipRectIndex := previousClipRectIndex].
	transform := previousTransform.
	clipRect := previousClipRect.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:13'
}
RtBatchingRenderer >> zIndex [

	^ zIndex
]
