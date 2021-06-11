"
I am a canvas that builds incoming draw commands into an object representation.
I ignore draw calls that do not have any effect (e.g. transparent fill color and no border).
My root is a `PicGroup`.
"
Class {
	#name : #RtBatchingCanvas,
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
	#category : #'RenderThee-Batching'
}

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
RtBatchingCanvas >> clipBy: aRectangle during: aBlock [

	(aRectangle containsRect: clipRect) ifTrue: [^ aBlock value: self].
	
	self clipRect: (aRectangle intersect: clipRect) during: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> clipRect [
	"Answers the rectangle by which all incoming draw commands are clipped.
	Intersection of all clipping rectangles active in the current scope.
	Not necessarily minimal. Local to the current transform."
	^ clipRect
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> clipRect: anObject [

	clipRect := anObject
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> clipRect: aRectangle during: aBlock [
	"Scoped setter for `clipRect` variable."
	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 16:06'
}
RtBatchingCanvas >> draw [

	| byteSize handleOffset |
	byteSize := data contentType byteSize * index * elementSize.
	handleOffset := data byteSize - byteSize.
	rectangleVBO
		data: (ExternalData
				fromHandle: data getHandle + handleOffset
				type: data contentType
				size: index * elementSize)
		size: byteSize.
	program boundDuring: [
		vao
			drawArrays: GL_TRIANGLES
			count: 6
			numInstances: index].
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtBatchingCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtBatchingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderStyle: aBorderStyle [

	
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:50'
}
RtBatchingCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 5/20/2021 21:25'
}
RtBatchingCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	| font left top bottom maxRight |
	font := fontOrNil ifNil: [TextStyle defaultFont].
	left := boundsRect left..
	top := boundsRect top.
	bottom := top + (boundsRect height min: font height).
	maxRight := boundsRect right.
	firstIndex to: lastIndex do: [:index |
		| char width right |
		char := s at: index.
		width := font widthOf: char.
		right := (left + width) min: maxRight.
		self rectangle: (Rectangle left: left right: right top: top bottom: bottom) solidColor: c.
		left := left + width.
		left >= maxRight ifTrue: [^ self]]
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/20/2021 16:21'
}
RtBatchingCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self
		fillOval: r
		fillStyle: (SolidFillStyle color: c)
		borderWidth: borderWidth
		borderColor: borderColor
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/20/2021 16:22'
}
RtBatchingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	(self isTransparentFillStyle: aFillStyle borderStyle: aBorderStyle) ifTrue: [^ self].
	aRectangle extent isZero ifTrue: [^ self].
	
	self frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 5/20/2021 16:21'
}
RtBatchingCanvas >> fillOval: aRectangle fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	self
		fillOval: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: bw color: bc)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 12:14'
}
RtBatchingCanvas >> fillRectangle: aRectangle fillStyle: aFillStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: aFillStyle
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 12:14'
}
RtBatchingCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self
		frameAndFillRectangle: r
		fillStyle: (SolidFillStyle color: fillColor)
		borderStyle: (SimpleBorder width: borderWidth color: borderColor)
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 5/20/2021 21:09'
}
RtBatchingCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	aFillStyle isTransparent ifFalse: [
		self
			rectangle: aRectangle
			solidColor: (aFillStyle isBitmapFill ifTrue: [aFillStyle form colorAt: 1@1] ifFalse: [aFillStyle asColor])].
	
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
RtBatchingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderStyle: aBorderStyle [

	aRectangle extent isZero ifTrue: [^ self].
	
	self frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle
]

{
	#category : #'drawing-rounded rectangles',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:23'
}
RtBatchingCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: fillStyle borderWidth: bw borderColor: bc [

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
RtBatchingCanvas >> frameRectangle: aRectangle borderStyle: aBorderStyle [

	self
		frameAndFillRectangle: aRectangle
		fillStyle: (SolidFillStyle color: Color transparent)
		borderStyle: aBorderStyle
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 5/20/2021 16:36'
}
RtBatchingCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self
		frameAndFillRectangle: (aPoint extent: aForm extent)
		fillStyle: (SolidFillStyle color: (aForm colorAt: 1@1))
		borderStyle: (SimpleBorder width: 0)
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 5/20/2021 17:06'
}
RtBatchingCanvas >> index [

	^ index
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 14:43'
}
RtBatchingCanvas >> initialize [

	| vertexBufferBinding |
	elementSize := 15.
	stride := elementSize * 4.
	numElements := 100000.
	data := ExternalType float allocateExternal: numElements * elementSize.
	
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
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 5 * 4;
			associateVertexBufferBinding: vertexBufferBinding].
		
		(vao vertexAttributeAt: program inputs t1 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 4 offset: 9 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
		
		(vao vertexAttributeAt: program inputs t2 location)
			enable;
			formatAsFloat: GL_FLOAT numComponents: 2 offset: 13 * 4;
			associateVertexBufferBinding: vertexBufferBinding.
	
	self reset.
]

{
	#category : #'drawing-lines',
	#'squeak_changestamp' : 'stlu 3/19/2021 17:30'
}
RtBatchingCanvas >> line: from to: to width: width color: color [

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
RtBatchingCanvas >> origin [
	"Answers the global coordinate of the currently active local origin."
	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 6/11/2021 15:10'
}
RtBatchingCanvas >> paragraph: aParagraph bounds: aRectangle color: aColor [

	| scanner |
	scanner := PicPictureCanvasDisplayScanner new
		text: aParagraph text
		textStyle: aParagraph textStyle
		foreground: aColor
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	aParagraph displayOn: self using: scanner at: aRectangle topLeft.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:52'
}
RtBatchingCanvas >> preserveStateDuring: aBlock [

	aBlock value: self
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 13:18'
}
RtBatchingCanvas >> projectionMatrix: aMatrix4x4 [

	program uniforms projectionMatrix: aMatrix4x4
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 13:58'
}
RtBatchingCanvas >> quadVertices [

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
	#'squeak_changestamp' : 'stlu 5/20/2021 21:11'
}
RtBatchingCanvas >> rectangle: aRectangle solidColor: aColor [

	| offset z clippedRectangle |
	index >= numElements ifTrue: [^ self].
	clippedRectangle := clipRect intersect: aRectangle.
	clippedRectangle area isZero ifTrue: [^ self].
	
	index := index + 1.
	offset := numElements - index * elementSize.
	z := index asFloat.
	
	data at: offset + 1 put: z.
	
	data at: offset + 2 put: clippedRectangle left.
	data at: offset + 3 put: clippedRectangle top.
	data at: offset + 4 put: clippedRectangle right.
	data at: offset + 5 put: clippedRectangle bottom.
	
	data at: offset + 6 put: aColor red.
	data at: offset + 7 put: aColor green.
	data at: offset + 8 put: aColor blue.
	data at: offset + 9 put: aColor alpha.
	
	data at: offset + 10 put: transform a11.
	data at: offset + 11 put: transform a21.
	data at: offset + 12 put: transform a12.
	data at: offset + 13 put: transform a22.
	data at: offset + 14 put: transform a13.
	data at: offset + 15 put: transform a23.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 5/20/2021 16:07'
}
RtBatchingCanvas >> reset [

	GL clearColor: Color white."(Color r: 0.1 g: 0.1 b: 0.1 alpha: 1.0)."
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).
	
	clipRect := Rectangle infinite.
	transform := Matrix2x3 identity.
	index := 0.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/20/2021 14:12'
}
RtBatchingCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix2x3 withScale: aPoint)
		during: aBlock.
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/19/2021 14:11'
}
RtBatchingCanvas >> solidRectangleFragmentShader [

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
	#'squeak_changestamp' : 'stlu 5/20/2021 15:44'
}
RtBatchingCanvas >> solidRectangleVertexShader [

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
	fragColor = color;
}'
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtBatchingCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [

	
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> transform [
	"Answers the Matrix2x3 by which all drawing commands are currently transformed.
	Multiplication of all transforms active in the current scope."
	^ transform
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> transform: anObject [

	transform := anObject
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 11/13/2020 18:20'
}
RtBatchingCanvas >> transform: aTransform during: aBlock [
	"Scoped setter for `transform` variable."
	| previousTransform |
	previousTransform := transform.
	transform := aTransform.
	aBlock cull: self.
	transform := previousTransform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 5/20/2021 14:12'
}
RtBatchingCanvas >> transformBy: aTransform during: aBlock [

	self
		transform: transform * aTransform asMatrix2x3
		during: [
			self
				clipRect: (aTransform globalBoundsToLocal: clipRect) expanded
				during: aBlock]
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/18/2021 17:26'
}
RtBatchingCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/10/2021 12:49'
}
RtBatchingCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	
]
