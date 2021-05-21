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
		'numElements'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'RenderThee-Batching'
}

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:41'
}
RtBatchingRenderer >> clipRect [

	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:41'
}
RtBatchingRenderer >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:15'
}
RtBatchingRenderer >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock value.
	clipRect := previousClipRect
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/21/2021 15:07'
}
RtBatchingRenderer >> draw [

	| byteSize |
	byteSize := data contentType byteSize * index * elementSize.
	rectangleVBO
		data: data
		size: byteSize.
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: index].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/21/2021 17:02'
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
	#'squeak_changestamp' : 'stlu 5/21/2021 17:19'
}
RtBatchingRenderer >> initialize [

	| vertexBufferBinding |
	elementSize := 12.
	stride := elementSize * 4.
	numElements := 100000.
	data := ExternalType float allocate: numElements * elementSize.
	
	GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS.
	
	program := GLProgram
					vertexSource: self solidRectangleVertexShader
					fragmentSource: self solidRectangleFragmentShader.
	
	rectangleVBO := GLBuffer create.
	quadVBO := GLBuffer create.
	vao := GLVertexArray create.
	
	vao boundDuring: [
		quadVBO usage: GL_STATIC_DRAW data: self quadVertices.
		(vao vertexBufferBindingAt: 0) buffer: quadVBO stride: 2 * 4.
		(vao vertexAttributeAt: program inputs position location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 0;
			associateVertexBufferBindingAt: 0.
		
		rectangleVBO usage: GL_DYNAMIC_DRAW size: data size.
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
			associateVertexBufferBinding: vertexBufferBinding].
		
		(vao vertexAttributeAt: program inputs t1 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 6 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs t2 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 10 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
	
	self reset.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:39'
}
RtBatchingRenderer >> projectionMatrix: aMatrix4x4 [

	program uniforms projectionMatrix: aMatrix4x4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:39'
}
RtBatchingRenderer >> quadVertices [

	^ #(
			-1.0 1.0	"top-left"
			1.0 -1.0	"bottom-right"
			-1.0 -1.0	"bottom-left"
			
			-1.0 1.0	"top-left"
			1.0 -1.0	"bottom-right"
			1.0 1.0		"top-right"
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
	#'squeak_changestamp' : 'stlu 5/21/2021 17:20'
}
RtBatchingRenderer >> rectangleLeft: left right: right top: top bottom: bottom solidColor: aColor [

	| offset z |
	index >= numElements ifTrue: [^ self].
	left >= right ifTrue: [^ self].
	top >= bottom ifTrue: [^ self].
	
	offset := index * elementSize.
	index := index + 1.
	z := index asFloat.
	
	data at: offset + 1 put: z.
	
	data at: offset + 2 put: left.
	data at: offset + 3 put: top.
	data at: offset + 4 put: right.
	data at: offset + 5 put: bottom.
	
	data basicAt: offset + 6 put: (aColor pixelValueForDepth: 32).
	
	data at: offset + 7 put: transform a11.
	data at: offset + 8 put: transform a21.
	data at: offset + 9 put: transform a12.
	data at: offset + 10 put: transform a22.
	data at: offset + 11 put: transform a13.
	data at: offset + 12 put: transform a23.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:08'
}
RtBatchingRenderer >> render: aPicture [

	self reset.
	self visit: aPicture.
	self draw.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:40'
}
RtBatchingRenderer >> reset [

	GL clearColor: Color white."(Color r: 0.1 g: 0.1 b: 0.1 alpha: 1.0)."
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
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
	#'squeak_changestamp' : 'stlu 5/21/2021 17:26'
}
RtBatchingRenderer >> solidRectangleVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 position;

// instanced attributes
layout (location = 1) in float z;
layout (location = 2) in vec4 coords;
layout (location = 3) in vec4 color;
layout (location = 4) in vec4 t1;
layout (location = 5) in vec2 t2;

out vec4 fragColor;

uniform mat4 projectionMatrix;

void main() {
	float x = position.x <= 0 ? coords[0] : coords[2];
	float y = position.y <= 0 ? coords[1] : coords[3];
	mat4x4 modelMatrix = mat4x4(
        t1[0], t1[1], 0.0, 0.0,
        t1[2], t1[3], 0.0, 0.0,
        0.0, 0.0, 1.0, 0.0,
        t2[0], t2[1], 0.0, 1.0);
	gl_Position = projectionMatrix * modelMatrix * vec4(x, y, z, 1.0);
	fragColor = color.bgra;
}'
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:41'
}
RtBatchingRenderer >> transform [

	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 21:41'
}
RtBatchingRenderer >> transform: anObject [

	transform := anObject
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:11'
}
RtBatchingRenderer >> transform: aTransform during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform |
	previousTransform := transform.
	transform := aTransform.
	aBlock value.
	transform := previousTransform
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 5/20/2021 22:15'
}
RtBatchingRenderer >> visitClip: aClip [

	self clipRect: (clipRect intersect: aClip clipRect) during: [
		self visitGroup: aClip]
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
	#'squeak_changestamp' : 'stlu 5/20/2021 22:27'
}
RtBatchingRenderer >> visitImage: anImage [

	| form color |
	form := anImage form.
	color := (form colorAt: 1@1).
	color isTransparent ifTrue: [
		color := form colorAt: form extent // 2].
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
	#'squeak_changestamp' : 'stlu 5/21/2021 16:20'
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
	#'squeak_changestamp' : 'stlu 5/20/2021 22:22'
}
RtBatchingRenderer >> visitTransform: aTransform [

	self transform: transform * aTransform matrix during: [
		self
			clipRect: (transform globalBoundsToLocal: clipRect) expanded
			during: [
				self visitGroup: aTransform]]
]
