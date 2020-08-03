Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'programs',
		'transform',
		'baseTransform',
		'clipRect',
		'lastTransform'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Canvas'
}

{ #category : #example }
GLCanvas class >> exampleWindow [
	"self exampleWindow"

	| gl |
	gl := GL4_1 newGLFWIn: (0 @ 0 extent: 900 asPoint).
	gl makeCurrentDuring: [
		RtDisplayFramebufferStore extent: 900 asPoint withCanvasDo: [:c |
			c fullDraw: ((ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0)]].
	
	[Sensor anyButtonPressed] whileFalse: [2 milliSeconds wait].
	gl destroy
]

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint store: anImageStoreClass do: aBlock [

	| store canvas |
	store := anImageStoreClass extent: aPoint.
	canvas := self extent: aPoint framebuffer: store framebuffer.
	
	store prepareForDrawingOn: canvas during: [
		aBlock value: canvas].
	^ store
]

{ #category : #'instance creation' }
GLCanvas class >> store: anImageStore do: aBlock [

	| canvas |
	canvas := self extent: anImageStore extent framebuffer: anImageStore framebuffer.
	
	anImageStore prepareForDrawingOn: canvas during: [
		aBlock value: canvas].
	^ anImageStore
]

{ #category : #binding }
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> clipBy: aRectangle during: aBlock [

	self flag: #todo. "transform rectangle?? seems excessive"
	self clipRect: aRectangle during: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> clipRect [

	^ lastTransform globalBoundsToLocal: clipRect
]

{ #category : #'drawing-support' }
GLCanvas >> clipRect: aRectangle during: aBlock [

	| previousClipRect gl viewTransform rect |
	viewTransform := baseTransform inverseTransformation * transform.
	
	previousClipRect := clipRect.
	gl := GL value.
	
	clipRect := aRectangle.
	viewTransform preservesAxisAlignment ifTrue: [
		rect := viewTransform localBoundsToGlobal: clipRect.
		gl glScissor: rect left with: rect top with: rect width with: rect height].
	
	aBlock cull: self.
	
	clipRect := previousClipRect.
	viewTransform preservesAxisAlignment ifTrue: [
		rect := viewTransform localBoundsToGlobal: clipRect.
		gl glScissor: rect left with: rect top with: rect width with: rect height]
]

{ #category : #accessing }
GLCanvas >> drawDrawLayer: aLayer [

	| store |
	store := aLayer cache ifNil: [
				aLayer
					createStoreOf: RtFramebufferStore
					using: FormCanvas].
	aLayer cache: store.
	self paintImageStore: store transform: aLayer transform sourceRect: store boundingBox
]

{ #category : #accessing }
GLCanvas >> drawGroupLayer: aLayer [

	aLayer cache
		ifNil: [super drawGroupLayer: aLayer]
		ifNotNil: [:store |
			self
				paintImageStore: store
				transform: aLayer transform
				sourceRect: store boundingBox]
]

{ #category : #'drawing-text' }
GLCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self boundDuring: [
		programs fontProgram boundDuring: [ | bitmapFont x |
			programs fontProgram
				image: 0;
				color: c.
			
			x := 0.
			bitmapFont := programs font: fontOrNil.
			bitmapFont texture boundDuring: [
				s
					from: firstIndex
					to: lastIndex
					do: [:character |
						(bitmapFont hasGlyphOf: character) ifTrue: [ | offset |
							offset := bitmapFont offsetFor: character.
							
							programs fontProgram
								extent: (bitmapFont extentFor: character);
								offsetX: offset x asFloat;
								mvp: transform * (Matrix4x4 withOffset: boundsRect origin + (x @ offset y)).
							
							self vbo draw: GL_TRIANGLE_STRIP].
						
						x := x + (bitmapFont advanceFor: character)]]]]
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [

	self boundDuring: [
		programs rectangleProgram boundDuring: [
			programs rectangleProgram
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

{ #category : #'drawing-images' }
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self boundDuring: [
		self textureProgram boundDuring: [
			(RtFormStore form: aForm) glTextureDo: [:texture |
				texture boundDuring: [
					self textureProgram
						sourcePosition: sourceRect origin / aForm extent asFloatPoint;
						sourceExtent: sourceRect extent / aForm extent asFloatPoint;
						mvp: transform * (Matrix4x4 withOffset: aPoint) * (Matrix4x4 withScale: aForm extent @ 1).
					self vbo draw: GL_TRIANGLE_STRIP]]]]
]

{ #category : #initialization }
GLCanvas >> initializeWithExtent: aPoint framebuffer: aFrameBuffer [

	extent := aPoint.
	baseTransform := transform := Matrix4x4 ortho: (0 @ 0 corner: extent) near: 0 far: 1.
	lastTransform := Matrix4x4 identity.
	framebuffer := aFrameBuffer.
	programs := GLCanvasPrograms create.
	clipRect := 0 @ 0 extent: aPoint
]

{ #category : #accessing }
GLCanvas >> outlineProgram [

	^ programs outlineProgram
]

{ #category : #'drawing-images' }
GLCanvas >> paintImageStore: aStore transform: aMatrix sourceRect: sourceRect [

	self boundDuring: [
		self textureProgram boundDuring: [
			aStore glTextureDo: [:texture |
				texture boundDuring: [
					self textureProgram
						sourcePosition: sourceRect origin / aStore extent asFloatPoint;
						sourceExtent: sourceRect extent / aStore extent asFloatPoint;
						mvp: transform * aMatrix * (Matrix4x4 withScale: aStore extent @ 1).
					self vbo draw: GL_TRIANGLE_STRIP]]]]
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

	^ programs textureProgram
]

{ #category : #accessing }
GLCanvas >> transform [
	^ transform
]

{ #category : #'drawing-support' }
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	aBlock cull: self.
	transform := previousTransform
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aMatrix clippingTo: aRectangle during: aBlock smoothing: cellSize [

	self clipBy: aRectangle during: [
		self transformBy: aMatrix asMatrix4x4 during: aBlock]
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aMatrix during: aBlock [

	| previousLastTransform |
	previousLastTransform := lastTransform.
	lastTransform := aMatrix.
	self transform: transform * aMatrix during: aBlock.
	lastTransform := previousLastTransform
]

{ #category : #'drawing-support' }
GLCanvas >> translateBy: aPoint during: aBlock [

	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock
]

{ #category : #accessing }
GLCanvas >> vao [

	^ programs vao
]

{ #category : #accessing }
GLCanvas >> vbo [

	^ programs vbo
]
