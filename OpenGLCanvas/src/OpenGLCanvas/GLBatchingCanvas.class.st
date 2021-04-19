"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #GLBatchingCanvas,
	#superclass : #Canvas,
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
	#category : #'OpenGLCanvas-Batching',
	#'squeak_changestamp' : '<historical>'
}

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
GLBatchingCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	self clipRect: (aRectangle intersect: clipRect) during: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 16:09'
}
GLBatchingCanvas >> draw [

	rectangleVBO data: data.
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: z
"			baseInstance: numElements - z"].
	GL checkForError.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
GLBatchingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 12:14'
}
GLBatchingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 12:14'
}
GLBatchingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:39'
}
GLBatchingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	aRectangle area isZero ifTrue: [^ self].
	
	aFillStyle isTransparent ifFalse: [
		self rectangle: (clipRect intersect: aRectangle) solidColor: aFillStyle asColor].
	
	aBorderStyle isTransparent ifFalse: [
		self rectangle: (aRectangle topLeft rect: aRectangle topRight + (0 @ aBorderStyle width)) solidColor: aBorderStyle color.
		self rectangle: (aRectangle topRight rect: aRectangle bottomRight - (aBorderStyle width @ 0)) solidColor: aBorderStyle color.
		self rectangle: (aRectangle bottomRight rect: aRectangle bottomLeft - (0 @ aBorderStyle width)) solidColor: aBorderStyle color.
		self rectangle: (aRectangle bottomLeft rect: aRectangle topLeft + (aBorderStyle width @ 0)) solidColor: aBorderStyle color]
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:24'
}
GLBatchingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	aRectangle extent isZero ifTrue: [^ self].
	
	self frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:23'
}
GLBatchingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

	self
		frameAndFillRoundRect: aRectangle
		radius: cornerRadius
		fillStyle: fillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 12:15'
}
GLBatchingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
GLBatchingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 17:19'
}
GLBatchingCanvas >> initialize [

	| vertexBufferBinding |
	elementSize := 25.
	stride := elementSize * 4.
	numElements := 10000.
	clipRect := Rectangle infinite.
	transform := Matrix4x4 identity.
	data := Float32Array new: numElements * elementSize.
	
	"GL enable: GL_DEPTH_TEST.
	GL depthFunc: GL_LESS."
	
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
		
		(vao vertexAttributeAt: program inputs modelMatrix location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 5 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs modelMatrix location + 1)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 9 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs modelMatrix location + 2)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 13 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs modelMatrix location + 3)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 17 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs color location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 21 * 4;
			associateVertexBufferBinding: vertexBufferBinding].
	
	GL checkForError
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:30'
}
GLBatchingCanvas >> line: from to: to width: width color: color [

	"| alignment localRect |
	localRect := (width * -0.5) asPoint
					corner: (to dist: from) @ 0.0 + (width * 0.5).
	alignment := (Matrix4x4 withOffset: from)
					* (Matrix4x4 withRotation: (to translateBy: from negated) theta).
	self transform: transform * alignment during: [
		self rectangle: localRect solidColor: Color random]"
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:56'
}
GLBatchingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
GLBatchingCanvas >> preserveStateDuring: aBlock [

	aBlock value: self
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 13:18'
}
GLBatchingCanvas >> projectionMatrix: aMatrix4x4 [

	program uniforms projectionMatrix: aMatrix4x4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 13:58'
}
GLBatchingCanvas >> quadVertices [

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
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 16:58'
}
GLBatchingCanvas >> rectangle: aRectangle solidColor: aColor [

	| offset |
	offset := z * elementSize.
	z := z + 1.
	"offset := data size - (z * elementSize)."
	data at: offset + 1 put: z.
	
	data at: offset + 2 put: aRectangle left.
	data at: offset + 3 put: aRectangle top.
	data at: offset + 4 put: aRectangle right.
	data at: offset + 5 put: aRectangle bottom.
	
	data replaceFrom: offset + 6 to: offset + 21 with: transform transposed.
	
	data replaceFrom: offset + 22 to: offset + 25 with: aColor asVectorColor.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 4/15/2021 12:09'
}
GLBatchingCanvas >> reset [

	GL clearColor: (Color r: 0.1 g: 0.1 b: 0.1 alpha: 0.1).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
	z := 0
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/18/2021 17:36'
}
GLBatchingCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix4x4 withScale: aPoint @ 1.0)
		during: aBlock.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 14:11'
}
GLBatchingCanvas >> solidRectangleFragmentShader [

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
	#'squeak_changestamp' : 'stlu 3/19/2021 18:24'
}
GLBatchingCanvas >> solidRectangleVertexShader [

	^ '#version 330 core
layout (location = 0) in vec2 position;

// instanced attributes
layout (location = 1) in float z;
layout (location = 2) in vec4 coords;
layout (location = 3) in mat4 modelMatrix;
layout (location = 7) in vec4 color;

out vec4 fragColor;

uniform mat4 projectionMatrix;

void main() {
	float x = position.x <= 0 ? coords.x : coords.z;
	float y = position.y <= 0 ? coords.y : coords.w;
	gl_Position = projectionMatrix * modelMatrix * vec4(x, y, z, 1.0);
	fragColor = color;
}'
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
GLBatchingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> transform: anObject [

	transform := anObject
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
GLBatchingCanvas >> transform: aTransform during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform |
	previousTransform := transform.
	transform := aTransform.
	aBlock cull: self.
	transform := previousTransform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/18/2021 17:26'
}
GLBatchingCanvas >> transformBy: aTransform during: aBlock [

	self
		transform: transform * aTransform asMatrix4x4
		during: [
			self
				clipRect: (aTransform globalBoundsToLocal: clipRect) expanded
				during: aBlock]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/18/2021 17:26'
}
GLBatchingCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
GLBatchingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	
]
