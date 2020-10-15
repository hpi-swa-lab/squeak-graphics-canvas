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
	#category : #'OpenGLCanvas-Core'
}

{ #category : #example }
GLCanvas class >> exampleWindow [
	"self exampleWindow"
	| display window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0.
	display := RtDisplayFramebufferStore extent: window extent.
	display canvasDo: [:c | c fullDraw: window].
	
	[Sensor anyButtonPressed] whileFalse: [2 milliSeconds wait].
	display glLibrary context destroy
]

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{ #category : #binding }
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock
]

{ #category : #'drawing-support' }
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

{ #category : #'drawing-support' }
GLCanvas >> clipBy: aRectangle during: aBlock [

	self clipRect: aRectangle during: aBlock.
	self clipBy: aRectangle
]

{ #category : #accessing }
GLCanvas >> clipRect [

	^ clipRect
]

{ #category : #'scoped state' }
GLCanvas >> clipRect: aRectangle during: aBlock [

	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	aBlock cull: self.
	clipRect := previousClipRect
]

{ #category : #'drawing-rectangles' }
GLCanvas >> drawPolygon: vertices color: aColor borderWidth: bw borderColor: bc [
	^ self frameAndFillRectangle: (Rectangle encompassing: vertices)  fillColor: aColor borderWidth: bw borderColor: bc.
]

{ #category : #'drawing-text' }
GLCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	"self frameRectangle: (boundsRect origin extent: 10@10) color: c."

	self boundDuring: [
		resources fontProgram boundDuring: [ | bitmapFont x |
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
							
							GL value checkForError.
							
							resources fontProgram
								extent: (bitmapFont extentFor: character);
								offsetX: offset x asFloat;
								mvp: transform * (Matrix4x4 withOffset: boundsRect origin + (x @ 0)).

							GL value checkForError.
							
							self vbo draw: GL_TRIANGLE_STRIP].
							GL value checkForError.
						
						x := x + (bitmapFont advanceFor: character)]]]]
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #'drawing-rectangles' }
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [
	^ self frameAndFillRectangle: r fillColor: c borderWidth: borderWidth borderColor: borderColor.
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self boundDuring: [
		resources rectangleProgram boundDuring: [
			resources rectangleProgram
				extent: r extent;
				color: fillColor;
				borderColor: borderColor;
				borderWidth: borderWidth asFloat;
				mvp: transform * (Matrix4x4 withOffset: r origin).
			self vbo draw: GL_TRIANGLE_STRIP]]
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
GLCanvas >> glLibrary [

	^ framebuffer gl
]

{ #category : #'drawing-images' }
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self translateBy: aPoint during: [:c |
		c paintImageStore: (RtFormStore form: aForm) sourceRect: sourceRect]
]

{ #category : #initialization }
GLCanvas >> initializeWithExtent: aPoint framebuffer: aFrameBuffer [

	extent := aPoint.
	framebuffer := aFrameBuffer.
	
	resources := self glLibrary at: GLSharedCanvasResources ifAbsentPut: [ GLSharedCanvasResources new ].
	clipRect := 0 @ 0 extent: extent.
	baseTransform := transform := Matrix4x4 ortho: clipRect near: 0 far: 1
]

{ #category : #'drawing-rectangles' }
GLCanvas >> line: pt1 to: pt2 width: w color: c [
	^ self frameAndFillRectangle: (Rectangle encompassing: {pt1. pt2})  fillColor: (Color transparent) borderWidth: w borderColor: c.
]

{ #category : #accessing }
GLCanvas >> outlineProgram [

	^ resources outlineProgram
]

{ #category : #'drawing-text' }
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

{ #category : #accessing }
GLCanvas >> textureProgram [

	^ resources textureProgram
]

{ #category : #accessing }
GLCanvas >> transform [
	^ transform
]

{ #category : #'scoped state' }
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	aBlock cull: self.
	transform := previousTransform
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip |
	transformedClip := (aTransform globalBoundsToLocal: clipRect) expanded.
	self clipRect: transformedClip during: [
		self transform: transform * aTransform asMatrix4x4 during: aBlock]
]

{ #category : #'drawing-support' }
GLCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{ #category : #accessing }
GLCanvas >> vao [

	^ resources vao
]

{ #category : #accessing }
GLCanvas >> vbo [

	^ resources vbo
]
