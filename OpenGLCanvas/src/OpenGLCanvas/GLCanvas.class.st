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
	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0.
	self openAndDraw: window
]

{ #category : #'instance creation' }
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDraw: anObject [

	^ self openAndDraw: anObject doing: []
	
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDraw: anObject doing: aBlock [

	| display window |
	display := RtDisplayFramebufferStore extent: anObject extent.
	window := display glLibrary context window.
	
	[[[window shouldClose] whileFalse: [
		"window extent: window extent + (1@1)."
		display glLibrary makeCurrentDuring: [
			display extent: window extent.
			display extentChanged.].
		display canvasDo: [:c |
			c scaleBy: window extent / anObject extent during: [c fullDraw: anObject].
			aBlock cull: c].
		anObject step.
		100 milliSeconds wait]]
	ensure: [display glLibrary destroy]] fork.
	
	^ display
	
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDrawCreatingMorphs: anObject [
	
	^ self openAndDraw: anObject doing: [:c | c getPixelData asMorph openInWorld]
	
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDrawSavingImages: anObject [

	| frame |
	frame := 0.
	^ self openAndDraw: anObject doing: [:c |
		c getPixelData writePNGfileNamed: frame asString , '.png'.
		frame := frame + 1]
	
]

{ #category : #example }
GLCanvas class >> profileUsing: anObject times: aNumber [

	| display testCanvas |
	display := RtDisplayFramebufferStore extent: anObject extent.
	display canvasDo: [:c | TimeProfileBrowser spyOn: [aNumber timesRepeat: [c fullDraw: anObject]]].
	display glLibrary destroy.
	
	testCanvas := FormCanvas extent: anObject extent.
	TimeProfileBrowser spyOn: [aNumber timesRepeat: [testCanvas fullDraw: anObject]]
	
]

{ #category : #binding }
GLCanvas >> bindAndUseProgram: aProgram during: aBlock [
	
	self boundDuring: [
		aProgram useDuring: [
			aBlock cull: self.]]
]

{ #category : #accessing }
GLCanvas >> bitmapPolygonProgram [

	^ resources bitmapPolygonProgram
]

{ #category : #binding }
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock
]

{ #category : #'drawing-support' }
GLCanvas >> clip [

	| rect viewTransform |
	viewTransform := baseTransform inverseTransformation * transform.
	
	viewTransform preservesAxisAlignment ifTrue: [
		rect := (viewTransform localBoundsToGlobal: clipRect) expanded.
		self glLibrary
				scissor: rect left
				with: rect top
				with: rect width
				with: rect height]
]

{ #category : #'drawing-support' }
GLCanvas >> clipBy: aRectangle during: aBlock [

	self clipRect: aRectangle during: aBlock
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
	self clip.
	aBlock cull: self.
	clipRect := previousClipRect.
	self clip.
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawBasePolygon: vbo [

	self glLibrary enable: GL_STENCIL_TEST.
	self glLibrary clear: GL_STENCIL_BUFFER_BIT.
	
	self glLibrary stencilFunc: GL_ALWAYS with: 0 with: 1.
	self glLibrary stencilOp: GL_INVERT with: GL_INVERT with: GL_INVERT.
	self glLibrary colorMask: GL_FALSE with: GL_FALSE with: GL_FALSE  with: GL_FALSE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vbo size.
	
	self glLibrary stencilFunc: GL_EQUAL with: 1 with: 1.
	self glLibrary stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
	self glLibrary colorMask: GL_TRUE with: GL_TRUE with: GL_TRUE  with: GL_TRUE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vbo size.
	
	self glLibrary disable: GL_STENCIL_TEST.
	
	^ vbo
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawBasePolygon: vertices withProgram: aProgram [

	| vbo collection |
				
	collection := OrderedCollection new.
	vertices do: [:position | collection add: position x.  collection add: position y.].
	vbo := GLArrayBuffer create.
	vbo
		usage: GL_STATIC_DRAW
		data: collection asFloat32Array.
	
	vbo boundDuring: [
		aProgram vertexAttrib: aProgram aPosLocation components: 2 stride: 8 offset: 0.
		GL checkForError].
	
	self glLibrary enable: GL_STENCIL_TEST.
	self glLibrary clear: GL_STENCIL_BUFFER_BIT.
	
	self glLibrary stencilFunc: GL_ALWAYS with: 0 with: 1.
	self glLibrary stencilOp: GL_INVERT with: GL_INVERT with: GL_INVERT.
	self glLibrary colorMask: GL_FALSE with: GL_FALSE with: GL_FALSE  with: GL_FALSE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vertices size.
	
	self glLibrary stencilFunc: GL_EQUAL with: 1 with: 1.
	self glLibrary stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
	self glLibrary colorMask: GL_TRUE with: GL_TRUE with: GL_TRUE  with: GL_TRUE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vertices size.
	
	self glLibrary disable: GL_STENCIL_TEST.
	
	^ vbo
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawBitmapPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| vbo clampMode |
	self bindAndUseProgram: self bitmapPolygonProgram during: [
		(RtFormStore form: aFillStyle form) glTextureDo: [:texture |
			texture boundDuring: [
				self bitmapPolygonProgram
					formOrigin: aFillStyle origin;
					formDirection: aFillStyle direction;
					formNormal: aFillStyle normal;
					mvp: transform.
					
				clampMode := aFillStyle tileFlag ifTrue: [GL_REPEAT] ifFalse: [GL_CLAMP_TO_EDGE].
								
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_S with: clampMode.
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_T with: clampMode.
			
				vbo := self polygonVbo: vertices.
				
				vbo boundDuring: [
					self bitmapPolygonProgram form: 0.
					GL checkForError.
					self bitmapPolygonProgram vertexAttrib: self polygonProgram aPosLocation components: 2 stride: 8 offset: 0.
					GL checkForError].
				
				self drawBasePolygon: vbo.
				self drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor]]]
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawGradientPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| vbo ramp |
	self bindAndUseProgram: self gradientPolygonProgram during: [
		ramp := aFillStyle pixelRamp.
		(RtFormStore form: (Form extent: ramp size @ 1 depth: 32 bits: ramp)) glTextureDo: [:texture |
			texture boundDuring: [
				self gradientPolygonProgram
					gradientOrigin: aFillStyle origin;
					gradientDirection: aFillStyle direction;
					gradientRadial: aFillStyle radial;
					mvp: transform.
				
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_S with: GL_CLAMP_TO_EDGE.
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_T with: GL_CLAMP_TO_EDGE.
			
				vbo := self polygonVbo: vertices.
				
				vbo boundDuring: [
					self gradientPolygonProgram pixelRamp: 0.
					GL checkForError.
					self polygonProgram vertexAttrib: self polygonProgram aPosLocation components: 2 stride: 8 offset: 0.
					GL checkForError].
				
				self drawBasePolygon: vbo.
				self drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor]]]
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices color: fillColor borderWidth: borderWidth borderColor: borderColor [

	| vbo |
	self bindAndUseProgram: self polygonProgram during: [
			self polygonProgram
				color: fillColor;
				mvp: transform.
			
			vbo := self polygonVbo: vertices.
			
			vbo boundDuring: [
				self polygonProgram vertexAttrib: self polygonProgram aPosLocation components: 2 stride: 8 offset: 0.
				GL checkForError].
			
			self drawBasePolygon: vbo.
			self drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor]
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	aFillStyle isGradientFill
		ifTrue: [self drawGradientPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor]
		ifFalse: [
			aFillStyle isBitmapFill
				ifTrue: [self drawBitmapPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor]
				ifFalse: [self drawPolygon: vertices color: aFillStyle asColor borderWidth: borderWidth borderColor: borderColor]]
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor [
			
	borderWidth isZero ifFalse: [
		self polygonProgram color: borderColor.
		self glLibrary lineWidth: borderWidth asFloat.
		vbo draw: GL_LINE_LOOP from: 0 count: vbo size]
]

{ #category : #'drawing-text' }
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

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [

	self bindAndUseProgram: self ovalProgram during: [
			self ovalProgram
				extent: r extent;
				color: c;
				borderColor: borderColor;
				borderWidth: borderWidth asFloat;
				mvp: transform * (Matrix4x4 withOffset: r origin).
			self vbo draw: GL_TRIANGLE_STRIP]
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: r fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [
	
	self bindAndUseProgram: self rectangleProgram during: [
			self rectangleProgram
				extent: r extent;
				color: fillColor;
				borderColor: borderColor;
				borderWidth: borderWidth asFloat;
				mvp: transform * (Matrix4x4 withOffset: r origin).
			self vbo draw: GL_TRIANGLE_STRIP]
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
GLCanvas >> getPixelData [
	
	| data |
	self glLibrary readBuffer: GL_BACK.
	data := (ByteArray new:  self extent area * 4).
	self glLibrary checkForError.
	self glLibrary readPixels: 0 with: 0 with: self extent x with: self extent y with: GL_BGRA with: GL_UNSIGNED_INT_8_8_8_8 with: data.
	self glLibrary checkForError.
	^ Form
		extent: self extent
		depth: 32
		bits: ((Bitmap new: self extent area * 4)
			copyFromByteArray: data;
			yourself)
]

{ #category : #accessing }
GLCanvas >> glLibrary [

	^ framebuffer library
]

{ #category : #accessing }
GLCanvas >> gradientPolygonProgram [

	^ resources gradientPolygonProgram
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
	transform := baseTransform := Matrix4x4 ortho: clipRect near: 0 far: 1
]

{ #category : #drawing }
GLCanvas >> line: pt1 to: pt2 width: w color: c [

	| vbo collection |
	self bindAndUseProgram: self polygonProgram during: [
			self polygonProgram
				color: c;
				mvp: transform.
			
			collection := Array with: pt1 x with: pt1 y with: pt2 x with: pt2 y.
			vbo := GLArrayBuffer create.
			vbo
				usage: GL_STATIC_DRAW
				data: collection asFloat32Array.
			
			vbo boundDuring: [
				self polygonProgram vertexAttrib: self polygonProgram aPosLocation components: 2 stride: 8 offset: 0.
				GL checkForError].
			
			GL checkForError.
			self glLibrary lineWidth: w asFloat.
			GL checkForError.
			vbo draw: GL_LINE_STRIP from: 0 count: 2.
			GL checkForError.
			
			resources initializeProgramAttributes]
]

{ #category : #accessing }
GLCanvas >> outlineProgram [

	^ resources outlineProgram
]

{ #category : #accessing }
GLCanvas >> ovalProgram [

	^ resources ovalProgram
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
GLCanvas >> polygonProgram [

	^ resources polygonProgram
]

{ #category : #'drawing-polygons' }
GLCanvas >> polygonVbo: vertices [

	| vbo collection |
				
	collection := OrderedCollection new.
	vertices do: [:position | collection add: position x.  collection add: position y.].
	vbo := GLArrayBuffer create.
	vbo
		usage: GL_STATIC_DRAW
		data: collection asFloat32Array.
			
	^ vbo
]

{ #category : #accessing }
GLCanvas >> rectangleProgram [

	^ resources rectangleProgram
]

{ #category : #'drawing-support' }
GLCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix4x4 withScale: aPoint@1)
		during: aBlock
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
	self transform: transform * aTransform asMatrix4x4 during: [
		self clipRect: transformedClip during: aBlock].
	self clip.
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
