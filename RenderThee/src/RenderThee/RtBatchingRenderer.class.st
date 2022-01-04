Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'transformsPool',
		'clipRect',
		'bounds',
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
		'fbo',
		'depthStencilRBO',
		'displayRBO',
		'quadVBO',
		'quadEBO',
		'colorToIndexTable',
		'glyphStore',
		'fontCache',
		'batches',
		'projectionMatrix',
		'damageProgram',
		'damageBatch'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 12/10/2021 16:11'
}
RtBatchingRenderer class >> bounds: aRectangle [

	^ self basicNew
		initializeWithBounds: aRectangle;
		yourself
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:39'
}
RtBatchingRenderer >> addPrimitive: aPrimitive [

	| isVisible |
	isVisible := (aPrimitive
		transform: transform index: transformIndex
		clip: clipRect index: clipRectIndex
		z: (zIndex := zIndex + 1)).
	isVisible ifTrue: [aPrimitive addToBatches: batches].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:41'
}
RtBatchingRenderer >> addPrimitives: collectionOfPrimitives [

	1 to: collectionOfPrimitives size do: [:i |
		self addPrimitive: (collectionOfPrimitives at: i)].
]

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
	#'squeak_changestamp' : 'stlu 12/10/2021 16:09'
}
RtBatchingRenderer >> bounds: aRectangle [

	bounds ~= aRectangle ifTrue: [
		bounds := aRectangle.
		projectionMatrix := nil.
		self resizeRenderbuffersTo: aRectangle extent].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/3/2022 17:23'
}
RtBatchingRenderer >> clear [

	GL clearColor: self clearColor.
	GL clearStencil: 1.
	GL depthMask: GL_TRUE.
	GL stencilMask: 16rFF.
	GL clear: (GL_DEPTH_BUFFER_BIT bitOr: GL_STENCIL_BUFFER_BIT).
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:43'
}
RtBatchingRenderer >> clearColor [

	^ Color
		h: Time utcMicrosecondClock / 2e3 \\ 360.0
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
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:44'
}
RtBatchingRenderer >> damageFragmentShader [

	^ '#version 330 core

out vec4 oColor;

void main() {
	oColor = vec4(1.0, 0.0, 0.0, 1.0);
}'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:45'
}
RtBatchingRenderer >> damageProgram [

	^ damageProgram
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:44'
}
RtBatchingRenderer >> damageVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 aPosition;
layout (location = 1) in ivec4 aInstanceData;

uniform mat4 uProjectionMatrix; //orthographic projection

void main() {
	vec2 vertexPosition = aInstanceData.xy + (aPosition * aInstanceData.zw);
	gl_Position = uProjectionMatrix * vec4(vertexPosition, 1.0, 1.0);
}'
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:59'
}
RtBatchingRenderer >> draw [

	batches do: [:batch | batch batchPrimitives].
	
	transientStoreF texture bindAt: 1.
	transientStoreI texture bindAt: 2.
	persistentStoreF texture bindAt: 3.
	colorStore texture bindAt: 5.
	glyphStore texture bindAt: 6.
	
	transientStoreF upload.
	transientStoreI upload.
	persistentStoreF upload.
	colorStore upload.
	
	rectangleProgram uniforms uProjectionMatrix: self projectionMatrix.
	textProgram uniforms uProjectionMatrix: self projectionMatrix.
	damageProgram uniforms uProjectionMatrix: self projectionMatrix.
	
	batches do: [:batch | batch draw].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/3/2022 15:05'
}
RtBatchingRenderer >> flushToScreen [

	self flag: #todo. "find a better name for this please"
	fbo
		blit: GL_COLOR_BUFFER_BIT
		into: GLFramebuffer default
		from: bounds
		to: bounds.
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
	#'squeak_changestamp' : 'stlu 9/28/2021 16:47'
}
RtBatchingRenderer >> frameAndFillRectangle: aRectangle radius: radius fillStyle: aFillStyle borderStyle: aBorderStyle [

	| primitives left right top bottom |
	primitives := OrderedCollection new.
	left := aRectangle left.
	right := aRectangle right.
	top := aRectangle top.
	bottom := aRectangle bottom.
	
	aFillStyle isTransparent ifFalse: [
		primitives add: (RtPrimRectangle new
			left: left
			right: right
			top: top
			bottom: bottom
			radius: radius
			color: (aFillStyle isBitmapFill
				ifTrue: [aFillStyle form colorAt: 1@1]
				ifFalse: [aFillStyle asColor]))].
	
	aBorderStyle isTransparent ifFalse: [
		| borderWidth |
		borderWidth := aBorderStyle width.
		"left"
		primitives add: (RtPrimRectangle new
			left: left
			right: left + borderWidth
			top: top
			bottom: bottom
			radius: 0.0
			color: aBorderStyle color).
		"right"
		primitives add: (RtPrimRectangle new
			left: right - borderWidth
			right: right
			top: top
			bottom: bottom
			radius: 0.0
			color: aBorderStyle color).
		"top"
		primitives add: (RtPrimRectangle new
			left: left
			right: right
			top: top
			bottom: top + borderWidth
			radius: 0.0
			color: aBorderStyle color).
		"bottom"
		primitives add: (RtPrimRectangle new
			left: left
			right: right
			top: bottom - borderWidth
			bottom: bottom
			radius: 0.0
			color: aBorderStyle color)].
		
	^ primitives asArray
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
	#'squeak_changestamp' : 'stlu 1/3/2022 15:42'
}
RtBatchingRenderer >> initializeBatches [

	batches := RtBatches new.
	batches setRenderer: self.
	
	damageBatch := RtDamageBatch new.
	damageBatch renderer: self.
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
	#'squeak_changestamp' : 'stlu 1/3/2022 14:57'
}
RtBatchingRenderer >> initializeFBO [

	fbo := GLFramebuffer create.
	fbo bind.
	self resizeRenderbuffersTo: bounds extent.
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
	#'squeak_changestamp' : 'stlu 1/3/2022 15:45'
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
	
	damageProgram := GLProgram
		vertexSource: self damageVertexShader
		fragmentSource: self damageFragmentShader.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/28/2021 16:33'
}
RtBatchingRenderer >> initializeQuadVBO [

	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: #(
			0.0 0.0	"top-left"
			1.0 0.0	"top-right"
			0.0 1.0	"bottom-left"
			1.0 1.0	"bottom-right"
		) asFloat32Array.
	
	quadEBO := GLBuffer create.
	quadEBO usage: GL_STATIC_DRAW data: #[0 1 2 2 1 3].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 9/10/2021 13:42'
}
RtBatchingRenderer >> initializeVAO [

	vao := GLVertexArray create.
	vao boundDuring: [
		vao elementArrayBuffer: quadEBO.
		
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
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/3/2022 14:46'
}
RtBatchingRenderer >> initializeWithBounds: aRectangle [

	bounds := aRectangle.
	
	self initializeFBO.
	self initializeGPUStores.
	self initializeQuadVBO.
	self initializeVAO.
	self initializePrograms.
	self initializeBatches.
	self initializeColors.
	
	fontCache := IdentityDictionary new.
	transformsPool := OrderedCollection new.
	
	self reset.
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
	#'squeak_changestamp' : 'stlu 12/6/2021 14:35'
}
RtBatchingRenderer >> projectionMatrix [

	^ projectionMatrix ifNil: [
		projectionMatrix := Matrix4x4
			ortho: bounds
			near: 1 - (2 ** 24)
			far: 0]
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
	#'squeak_changestamp' : 'stlu 1/3/2022 16:08'
}
RtBatchingRenderer >> render: aPicture damage: damageRectangles [

	self reset.
	self visit: aPicture.
	
	self clear.
	self renderStencil: damageRectangles.
	self draw.
	self flushToScreen.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 1/3/2022 17:25'
}
RtBatchingRenderer >> renderStencil: damageRectangles [

	GL enable: GL_STENCIL_TEST.
	GL stencilMask: 1.
	GL stencilFunc: GL_EQUAL with: 1 with: 1.
	GL stencilOp: GL_KEEP with: GL_ZERO with: GL_ZERO.
	GL depthFunc: GL_NEVER.
	damageBatch reset.
	damageRectangles do: [:rect |
		damageBatch
			addInstance: rect left
			with: rect top
			with: rect width
			with: rect height].
	damageBatch draw.
	GL depthFunc: GL_LESS.
	GL stencilFunc: GL_EQUAL with: 0 with: 1.
	GL stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 12/10/2021 16:13'
}
RtBatchingRenderer >> reset [

	transientStoreF reset.
	transientStoreI reset.
	
	clipRect := bounds.
	transform := transformsPool isEmpty
		ifTrue: [Matrix2x3 identity]
		ifFalse: [transformsPool removeLast setIdentity].
	
	transformIndex := self allocateTransform: transform.
	clipRectIndex := self allocateClipRect: clipRect.
	zIndex := 0.
	
	batches do: [:batch | batch reset].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 1/3/2022 14:46'
}
RtBatchingRenderer >> resizeRenderbuffersTo: newExtent [

	depthStencilRBO ifNotNil: [depthStencilRBO delete].
	depthStencilRBO := GLRenderbuffer create.
	depthStencilRBO initializeStorage: newExtent format: GL_DEPTH24_STENCIL8.
	fbo attachDepthAndStencilRenderbuffer: depthStencilRBO.

	displayRBO ifNotNil: [displayRBO delete].	
	displayRBO := GLRenderbuffer create.
	displayRBO initializeStorage: newExtent format: GL_RGBA8.
	fbo attachColorRenderbuffer: displayRBO at: 0.
]

{
	#category : #shaders,
	#'squeak_changestamp' : 'stlu 11/17/2021 15:06'
}
RtBatchingRenderer >> textFragmentShader [

	^ '#version 330 core
in vec4 vTextColor;
in vec2 vGlyphCoords;

out vec4 oColor;

uniform sampler2D sGlyphStore;

void main() {
	vec4 texel = texture(sGlyphStore, vGlyphCoords);
	vec4 alpha = vec4(vec3(1.0) - texel.rgb, texel.a);
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
	#category : #visiting,
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
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 1/4/2022 14:08'
}
RtBatchingRenderer >> visitImage: anImageNode [

	"| form color |
	form := aPicImage form.
	color := Color red.
	color := (form colorAt: 1@1).
	color isTransparent ifTrue: [
		color := form colorAt: form extent // 2]."
	| primitives |
	primitives := anImageNode primitives ifNil: [
		anImageNode primitives: (self
			frameAndFillRectangle: anImageNode bounds
			radius: 0.0
			fillStyle: (SolidFillStyle color: Color red)
			borderStyle: (SimpleBorder width: 0))].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:41'
}
RtBatchingRenderer >> visitLine: aLineNode [

	| rect primitives |
	rect := aLineNode from rect: aLineNode to.
	primitives := aLineNode primitives ifNil: [
		aLineNode primitives: { RtPrimRectangle new
			left: rect left
			right: rect right + 1
			top: rect top
			bottom: rect bottom + 1
			radius: 0.0
			color: aLineNode color }].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 17:23'
}
RtBatchingRenderer >> visitMorph: aPicMorph [

	aPicMorph offset isZero
		ifTrue: [self visitGroup: aPicMorph]
		ifFalse: [self visitTransform: aPicMorph].
	"dist := currentFrame - aPicMorph invalidationStamp.
	dist < 15 ifTrue: [
		| color |
		color := Color green alpha: (15 - dist) / 15.0.
		self
			frameAndFillRectangle: aPicMorph bounds
			radius: 0.0
			fillStyle: (SolidFillStyle color: Color transparent)
			borderStyle: (SimpleBorder width: 1 color: color)]."
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:42'
}
RtBatchingRenderer >> visitOval: anOvalNode [

	| primitives |
	primitives := anOvalNode primitives ifNil: [
		anOvalNode primitives: (self
			frameAndFillRectangle: anOvalNode bounds
			radius: 0.0
			fillStyle: anOvalNode fillStyle
			borderStyle: anOvalNode borderStyle)].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
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
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:42'
}
RtBatchingRenderer >> visitPolygon: aPolygonNode [

	| primitives |
	primitives := aPolygonNode primitives ifNil: [
		aPolygonNode primitives: (self
			frameAndFillRectangle: aPolygonNode estimatedBounds
			radius: 0.0
			fillStyle: aPolygonNode fillStyle
			borderStyle: aPolygonNode borderStyle)].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:42'
}
RtBatchingRenderer >> visitRectangle: aRectangleNode [

	| primitives |
	primitives := aRectangleNode primitives ifNil: [
		aRectangleNode primitives: (self
			frameAndFillRectangle: aRectangleNode bounds
			radius: 0.0
			fillStyle: aRectangleNode fillStyle
			borderStyle: aRectangleNode borderStyle)].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:42'
}
RtBatchingRenderer >> visitRoundedRectangle: aRoundedRectangleNode [

	| primitives |
	primitives := aRoundedRectangleNode primitives ifNil: [
		aRoundedRectangleNode primitives: (self
			frameAndFillRectangle: aRoundedRectangleNode bounds
			radius: aRoundedRectangleNode radius
			fillStyle: aRoundedRectangleNode fillStyle
			borderStyle: aRoundedRectangleNode borderStyle)].
	self addPrimitives: primitives.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 12:42'
}
RtBatchingRenderer >> visitString: aStringNode [

	| bounds primitives previousClipRect previousClipRectIndex |
	"true ifTrue: [^ self]."
	bounds := aStringNode bounds ifNil: [^ self].
	previousClipRect := clipRect.
	(clipRect := clipRect intersect: bounds) hasPositiveExtent ifTrue: [
		previousClipRectIndex := clipRectIndex.
		clipRectIndex := self allocateClipRect: clipRect.
		
		primitives := aStringNode primitives ifNil: [
			aStringNode primitives: { RtPrimTextRun new
				string: aStringNode contents
				start: aStringNode startIndex
				stop: aStringNode stopIndex
				font: aStringNode font
				color: aStringNode color
				left: aStringNode position x
				top: aStringNode position y}].
		self addPrimitives: primitives.
		
		clipRectIndex := previousClipRectIndex].
	clipRect := previousClipRect.
]

{
	#category : #visiting,
	#'squeak_changestamp' : 'stlu 12/6/2021 13:57'
}
RtBatchingRenderer >> visitTransform: aPicTransform [

	| previousTransform previousClipRect previousTransformIndex previousClipRectIndex |
	previousClipRect := clipRect.
	(clipRect := (aPicTransform matrix globalBoundsToLocal: clipRect) expanded) hasPositiveExtent ifTrue: [
		previousTransform := transform.
		transform := transformsPool isEmpty
			ifTrue: [previousTransform shallowCopy]
			ifFalse: [transformsPool removeLast setTo: previousTransform].
		transform *= aPicTransform matrix.
		previousTransformIndex := transformIndex.
		previousClipRectIndex := clipRectIndex.
		transformIndex := self allocateTransform: transform.
		clipRectIndex := self allocateClipRect: clipRect.
		
		self visitGroup: aPicTransform.
		
		transformsPool addLast: transform.
		transform := previousTransform.
		transformIndex := previousTransformIndex.
		clipRectIndex := previousClipRectIndex].
	clipRect := previousClipRect.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 8/26/2021 15:13'
}
RtBatchingRenderer >> zIndex [

	^ zIndex
]
