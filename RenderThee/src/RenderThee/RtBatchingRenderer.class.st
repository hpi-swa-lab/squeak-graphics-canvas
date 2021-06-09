Class {
	#name : #RtBatchingRenderer,
	#superclass : #PicVisitor,
	#instVars : [
		'transform',
		'clipRect',
		'data',
		'index',
		'program',
		'vao',
		'quadVBO',
		'stride',
		'z',
		'rectangleVBO',
		'elementSize',
		'numElements',
		'renderTasksTexture',
		'vertexData'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> clipRect [

	^ clipRect
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/8/2021 10:37'
}
RtBatchingRenderer >> draw [

	GL clearColor: Color cyan."(Color r: 0.1 g: 0.1 b: 0.1 alpha: 1.0)."
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	renderTasksTexture
		extent: 512 @ 512
		internalFormat: GL_RGBA32F
		data: data
		format: GL_RGBA
		type: GL_FLOAT.
	
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: index]
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:45'
}
RtBatchingRenderer >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	| left right top bottom |
	left := aRectangle left max: clipRect left.
	right := aRectangle right min: clipRect right.
	top := aRectangle top max: clipRect top.
	bottom := aRectangle bottom min: clipRect bottom.
	
	aBorderStyle isTransparent ifFalse: [
		| x |
		x := aRectangle left + aBorderStyle width.
		x > left ifTrue: [
			self
				rectangleLeft: aRectangle left
				right: x
				top: top
				bottom: bottom
				solidColor: aBorderStyle color].
		x := aRectangle right - aBorderStyle width.
		x < right ifTrue: [
			self
				rectangleLeft: x
				right: aRectangle right
				top: top
				bottom: bottom
				solidColor: aBorderStyle color].
		x := aRectangle top + aBorderStyle width.
		x > top ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: aRectangle top
				bottom: x
				solidColor: aBorderStyle color].
		x := aRectangle bottom - aBorderStyle width.
		x < bottom ifTrue: [
			self
				rectangleLeft: left
				right: right
				top: x
				bottom: aRectangle bottom
				solidColor: aBorderStyle color]].
	
	aFillStyle isTransparent ifFalse: [
		self
			rectangleLeft: left
			right: right
			top: top
			bottom: bottom
			solidColor: (aFillStyle isBitmapFill ifTrue: [aFillStyle form colorAt: 1@1] ifFalse: [aFillStyle asColor])].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:41'
}
RtBatchingRenderer >> index [

	^ index
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/9/2021 12:47'
}
RtBatchingRenderer >> initialize [

	elementSize := 16.
	stride := elementSize * 4.
	numElements := 100000.
	data := ExternalType float allocate: 512 squared * 4"numElements * elementSize".
	
	"vertexData := ExternalType uint32_t allocate: 512 squared // 4.
	1 to: vertexData size do: [:index |
		vertexData at: index put: index - 1].
	rectangleVBO := GLBuffer create.
	rectangleVBO usage: GL_STATIC_DRAW data: vertexData."
	
	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.
	
	renderTasksTexture := GLTexture2D create.
	renderTasksTexture
		wrapS: GL_REPEAT;
		wrapT: GL_REPEAT;
		minificationFilter: GL_LINEAR;
		magnificationFilter: GL_LINEAR;
		bindAt: 0.
	
	program := GLProgram
					vertexSource: self solidRectangleVertexShader
					fragmentSource: self solidRectangleFragmentShader.
	program uniforms sRenderTasks: 0.
	
	quadVBO := GLBuffer create.
	quadVBO usage: GL_STATIC_DRAW data: self quadVertices.
	
	vao := GLVertexArray create.
	vao boundDuring: [
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexAttributeAt: program inputs position location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		"vertexBufferBinding := vao vertexBufferBindingAt: 1.
		vertexBufferBinding
			buffer: rectangleVBO stride: vertexData bytesPerElement;
			instanceDivisor: 1.
		
		(vao vertexAttributeAt: 1)
			enable;
			formatAsInteger: GL_UNSIGNED_INT numComponents: 1 offset: 0;
			associateVertexBufferBinding: vertexBufferBinding."
		
		"rectangleVBO usage: GL_DYNAMIC_DRAW size: data size.
		vertexBufferBinding := vao vertexBufferBindingAt: 1.
		vertexBufferBinding
			buffer: rectangleVBO stride: stride;
			instanceDivisor: 1.
		
		(vao vertexAttributeAt: program inputs z location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 1 offset: 0;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs coords location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 1 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs color location)
			enable;
			formatAsFloat: GL_UNSIGNED_BYTE numComponents: 4 offset: 5 * 4 normalize: true;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs t1 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 6 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs t2 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 10 * 4;
			associateVertexBufferBinding: vertexBufferBinding"].
	
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/6/2021 20:20'
}
RtBatchingRenderer >> projectionMatrix: aMatrix4x4 [

	program uniforms projectionMatrix: aMatrix4x4
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
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom solidColor: aColor [

	| offset |
	index >= numElements ifTrue: [^ self].
	left >= right ifTrue: [^ self].
	top >= bottom ifTrue: [^ self].
	
	offset := index * 16"elementSize".
	index := index + 1.
	
	data
		startingAt: offset + 1
		put: left asFloat
		put: top asFloat
		put: right asFloat
		put: bottom asFloat
		put: aColor red
		put: aColor green
		put: aColor blue
		put: aColor alpha
		put: transform a11
		put: transform a21
		put: transform a12
		put: transform a22
		put: transform a13
		put: transform a23.
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
	#'squeak_changestamp' : 'stlu 6/9/2021 12:47'
}
RtBatchingRenderer >> reset [

	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	index := 0.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:39'
}
RtBatchingRenderer >> solidRectangleFragmentShader [

	^ '#version 330 core
in vec4 fragColor;

out vec4 color;

void main() {
	color = fragColor;
	// color = vec4(1.0, 0.0, 0.0, 1.0);
}'
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/8/2021 13:40'
}
RtBatchingRenderer >> solidRectangleVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 position;
// layout (location = 1) in int taskID;

out vec4 fragColor;

uniform sampler2D sRenderTasks;
uniform mat4 projectionMatrix;

#define RENDER_TASKS_WIDTH 512u
#define VECS_PER_RENDER_TASK 4

ivec2 get_gpu_cache_uv(int address) {
	return ivec2(uint(address) % RENDER_TASKS_WIDTH,
								uint(address) / RENDER_TASKS_WIDTH);
}

void main() {
	ivec2 address = get_gpu_cache_uv(gl_InstanceID * VECS_PER_RENDER_TASK);
	vec4 coords = texelFetch(sRenderTasks, address, 0);
	vec4 color = texelFetchOffset(sRenderTasks, address, 0, ivec2(1, 0));
	vec4 t1 = texelFetchOffset(sRenderTasks, address, 0, ivec2(2, 0));
	vec4 t2 = texelFetchOffset(sRenderTasks, address, 0, ivec2(3, 0));

	vec2 pos = coords.xy + position * (coords.zw - coords.xy);
	mat4x4 modelMatrix = mat4x4(
		t1[0], t1[1], 0.0, 0.0,
		t1[2], t1[3], 0.0, 0.0,
		0.0, 0.0, 1.0, 0.0,
		t2[0], t2[1], 0.0, 1.0);
	gl_Position = projectionMatrix * modelMatrix * vec4(pos, gl_InstanceID, 1.0);
	fragColor = color;
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
	#'squeak_changestamp' : 'stlu 6/9/2021 12:45'
}
RtBatchingRenderer >> visitClip: aClip [

	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := clipRect intersect: aClip clipRect.
	self visitGroup: aClip.
	clipRect := previousClipRect.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/21/2021 15:03'
}
RtBatchingRenderer >> visitGroup: aGroup [

	aGroup children reverseDo: [:child |
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
	#'squeak_changestamp' : 'stlu 6/9/2021 12:44'
}
RtBatchingRenderer >> visitTransform: aTransform [

	| previousTransform previousClipRect |
	previousTransform := transform.
	previousClipRect := clipRect.
	transform := transform * aTransform matrix.
	clipRect := (transform globalBoundsToLocal: clipRect) expanded.
	self visitGroup: aTransform.
	clipRect := previousClipRect.
	transform := previousTransform.
]
