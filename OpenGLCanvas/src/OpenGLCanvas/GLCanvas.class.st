Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'transform',
		'baseTransform',
		'clipRect',
		'lastTransform',
		'resources'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core',
	#commentStamp : ''
}

{
	#category : #example,
	#timestamp : ''
}
GLCanvas class >> exampleWindow [
	"self exampleWindow"
	| display window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0.
	display := RtDisplayFramebufferStore extent: window extent.
	display canvasDo: [:c | c fullDraw: window].
	
	[Sensor anyButtonPressed] whileFalse: [2 milliSeconds wait].
	display glLibrary context destroy
]

{
	#category : #'instance creation',
	#timestamp : ''
}
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{
	#category : #binding,
	#timestamp : ''
}
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
GLCanvas >> clipBy: aRectangle [

	"| rect viewTransform |
	viewTransform := baseTransform inverseTransformation * transform.
	
	viewTransform preservesAxisAlignment ifTrue: [
		rect := viewTransform localBoundsToGlobal: aRectangle.
		self glLibrary
				glScissor: rect left
				with: rect top
				with: rect width
				with: rect height]"
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
GLCanvas >> clipBy: aRectangle during: aBlock [

	self clipRect: aRectangle during: aBlock.
	self clipBy: aRectangle
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> clipRect [

	^ clipRect
]

{
	#category : #'scoped state',
	#timestamp : ''
}
GLCanvas >> clipRect: aRectangle during: aBlock [

	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
GLCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [
	^ self frameAndFillRectangle: (Rectangle encompassing: vertices)  fillColor: aColor borderWidth: bw borderColor: bc.
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
GLCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	"self frameRectangle: (boundsRect origin extent: 10@10) color: c."

	self boundDuring: [
		resources fontProgram useDuring: [ | bitmapFont x |
			resources fontProgram
				image: 0;
				color: c.
			
			x := 0.
			bitmapFont := resources font: fontOrNil.
			bitmapFont texture boundDuring: [
				s
					from: firstIndex
					to: lastIndex
					do: [:character |
						(bitmapFont hasGlyphOf: character) ifTrue: [ | offset |
							offset := bitmapFont offsetFor: character.
							
							GL checkForError.
							
							resources fontProgram
								extent: (bitmapFont extentFor: character);
								offsetX: offset x asFloat;
								mvp: transform * (Matrix4x4 withOffset: boundsRect origin + (x @ 0)).

							GL checkForError.
							
							self vbo draw: GL_TRIANGLE_STRIP].
							GL checkForError.
						
						x := x + (bitmapFont advanceFor: character)]]]]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> extent [

	^ extent
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [
	^ self frameAndFillRectangle: r fillColor: c borderWidth: borderWidth borderColor: borderColor.
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
GLCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self boundDuring: [
		resources rectangleProgram useDuring: [
			resources rectangleProgram
				extent: r extent;
				color: fillColor;
				borderColor: borderColor;
				borderWidth: borderWidth asFloat;
				mvp: transform * (Matrix4x4 withOffset: r origin).
			self vbo draw: GL_TRIANGLE_STRIP]]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> framebuffer [

	^ framebuffer
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> glLibrary [

	^ framebuffer library
]

{
	#category : #'drawing-images',
	#timestamp : ''
}
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self translateBy: aPoint during: [:c |
		c paintImageStore: (RtFormStore form: aForm) sourceRect: sourceRect]
]

{
	#category : #initialization,
	#timestamp : ''
}
GLCanvas >> initializeWithExtent: aPoint framebuffer: aFrameBuffer [

	extent := aPoint.
	framebuffer := aFrameBuffer.
	
	resources := self glLibrary at: GLSharedCanvasResources ifAbsentPut: [ GLSharedCanvasResources new ].
	clipRect := 0 @ 0 extent: extent.
	baseTransform := transform := Matrix4x4 ortho: clipRect near: 0 far: 1
]

{
	#category : #'drawing-rectangles',
	#timestamp : ''
}
GLCanvas >> line: pt1 to: pt2 width: w color: c [
	^ self frameAndFillRectangle: (Rectangle encompassing: {pt1. pt2})  fillColor: (Color transparent) borderWidth: w borderColor: c.
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> outlineProgram [

	^ resources outlineProgram
]

{
	#category : #'drawing-text',
	#timestamp : ''
}
GLCanvas >> paragraph: paragraph bounds: bounds color: c [

	| scanner |
	scanner := GLCanvasDisplayScanner new
		text: paragraph text
		textStyle: paragraph textStyle
		foreground: c
		background: Color transparent
		fillBlt: self
		ignoreColorChanges: false.
	
	paragraph displayOn: self using: scanner at: bounds topLeft
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> textureProgram [

	^ resources textureProgram
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> transform [
	^ transform
]

{
	#category : #'scoped state',
	#timestamp : ''
}
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	aBlock cull: self.
	transform := previousTransform
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
GLCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip |
	transformedClip := (aTransform globalBoundsToLocal: clipRect) expanded.
	self clipRect: transformedClip during: [
		self transform: transform * aTransform asMatrix4x4 during: aBlock]
]

{
	#category : #'drawing-support',
	#timestamp : ''
}
GLCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> vao [

	^ resources vao
]

{
	#category : #accessing,
	#timestamp : ''
}
GLCanvas >> vbo [

	^ resources vbo
]
