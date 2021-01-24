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

{ #category : #'instance creation' }
GLCanvas class >> displayWithExtent: extent samples: samples [

	| display |
	samples > 1
		ifTrue: [
			display := RtMultisampleDisplayFramebufferStore extent: extent.
			display samples: samples.]
		ifFalse: [
			display := RtDisplayFramebufferStore extent: extent].
	^ display
]

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

	^ self openAndDraw: anObject doing: aBlock samples: 1
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDraw: anObject doing: aBlock samples: samples [

	| display window |
	display := self displayWithExtent: anObject extent samples: samples.
	window := display glLibrary context window.
	
	[[[window shouldClose] whileFalse: [
		display glLibrary makeCurrentDuring: [
			display extent: window extent.
			display extentChanged].
		window extent isZero ifFalse: [
			display canvasDo: [:c |
				c scaleBy: window extent / anObject extent during: [c fullDraw: anObject].
				aBlock cull: c]].
		33 milliSeconds wait]]
	ensure: [display glLibrary destroy]] fork.
	
	^ display
]

{ #category : #'instance creation' }
GLCanvas class >> openAndDraw: anObject samples: samples [

	^ self openAndDraw: anObject doing: [] samples: samples
	
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

{ #category : #accessing }
GLCanvas >> contentsOfArea: aRectangle into: aForm [
	
	| data numerOfBytes |
	self glLibrary readBuffer: GL_BACK.
	numerOfBytes := aRectangle area * 4.
	data := (ByteArray new: numerOfBytes).
	self glLibrary checkForError.
	
	self glLibrary
		readPixels: aRectangle left with: aRectangle top with: aRectangle width with: aRectangle height
		with: GL_BGRA with: GL_UNSIGNED_INT_8_8_8_8 with: data.
		
	self glLibrary checkForError.
	aForm bits: ((Bitmap new: numerOfBytes) copyFromByteArray: data)
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawBasePolygon: vbo [

	self glLibrary enable: GL_STENCIL_TEST.
	self glLibrary clear: GL_STENCIL_BUFFER_BIT.
	
	self glLibrary stencilFunc: GL_ALWAYS with: 0 with: 1.
	self glLibrary stencilOp: GL_INVERT with: GL_INVERT with: GL_INVERT.
	self glLibrary colorMask: GL_FALSE with: GL_FALSE with: GL_FALSE  with: GL_FALSE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vbo size / 8.
	
	self glLibrary stencilFunc: GL_EQUAL with: 1 with: 1.
	self glLibrary stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
	self glLibrary colorMask: GL_TRUE with: GL_TRUE with: GL_TRUE  with: GL_TRUE.
	
	vbo draw: GL_TRIANGLE_FAN from: 0 count: vbo size / 8.
	
	self glLibrary disable: GL_STENCIL_TEST.
	
	^ vbo
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	| vbo |
	aProgram mvp: transform.
	vbo := self polygonVbo: vertices.
			
	vbo boundDuring: [
		aProgram vertexAttrib: aProgram aPosLocation components: 2 stride: 8 offset: 0.
		GL checkForError].
	
	self drawBasePolygon: vbo.
	self drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices color: fillColor borderWidth: borderWidth borderColor: borderColor [

	self drawPolygon: vertices fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| drawPolygonBlock |
	drawPolygonBlock := [:aProgram | self drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
	
	self setUniformsFrom: aFillStyle for: self polygonPrograms during: drawPolygonBlock
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygonBorder: vbo borderWidth: borderWidth borderColor: borderColor [
			
	borderWidth isZero ifFalse: [
		self solidPolygonProgram color: borderColor.
		self glLibrary lineWidth: borderWidth asFloat.
		vbo draw: GL_LINE_LOOP from: 0 count: vbo size / 8]
]

{ #category : #'drawing-text' }
GLCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self boundDuring: [
		self fontProgram useDuring: [ | bitmapFont x |
			self fontProgram
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
							
							self fontProgram
								extent: (bitmapFont extentFor: character);
								offsetX: offset x asFloat;
								mvp: transform * (Matrix4x4 withOffset: boundsRect origin + (x @ 0)).

							GL checkForError.
			
							self vbo boundDuring: [
								self fontProgram vertexAttrib: self fontProgram aPosLocation components: 2 stride: 16 offset: 0.
								GL checkForError].
													
							self vbo draw: GL_TRIANGLE_STRIP].
							GL checkForError.
						
						x := x + (bitmapFont advanceFor: character)]]]]
]

{ #category : #accessing }
GLCanvas >> extent [

	^ extent
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	aProgram
		extent: r extent;
		origin: r origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		mvp: transform.
	
	self vbo boundDuring: [
		aProgram vertexAttrib: aProgram aPosLocation components: 2 stride: 16 offset: 0.
		GL checkForError].
		
	self vbo draw: GL_TRIANGLE_STRIP
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [
	
	self fillOval: r fillStyle: c borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [

	| drawOvalBlock |
	drawOvalBlock := [:aProgram | self fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
	
	self setUniformsFrom: aFillStyle for: self ovalPrograms during: drawOvalBlock
]

{ #category : #accessing }
GLCanvas >> fontProgram [

	^ resources fontProgram
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: aRectangle fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [
	
	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [

	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: aFillStyle borderWidth: aBorderStyle width borderColor: aBorderStyle color
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [
	
	aProgram
		extent: aRectangle extent;
		origin: aRectangle origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		cornerRadius: cornerRadius asFloat;
		mvp: transform.
	
	self vbo boundDuring: [
		aProgram vertexAttrib: aProgram aPosLocation components: 2 stride: 16 offset: 0.
		GL checkForError].
		
	self vbo draw: GL_TRIANGLE_STRIP
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderWidth: bw borderColor: bc [

	| drawRectangleBlock |
	drawRectangleBlock := [:aProgram | self frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: bw borderColor: bc withProgram: aProgram].
	
	self setUniformsFrom: aFillStyle for: self rectanglePrograms during: drawRectangleBlock
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
GLCanvas >> framebuffer: aFrameBuffer [

	framebuffer := aFrameBuffer
]

{ #category : #accessing }
GLCanvas >> getPixelData [
	
	| form |
	form := Form extent: self extent depth: 32.
	self contentsOfArea: (Rectangle origin: 0@0 extent: self extent) into: form.
	^ form
]

{ #category : #accessing }
GLCanvas >> glLibrary [

	^ framebuffer library
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
	self bindAndUseProgram: self lineProgram during: [
			self lineProgram
				color: c;
				mvp: transform.
			
			collection := Array with: pt1 x with: pt1 y with: pt2 x with: pt2 y.
			vbo := GLArrayBuffer create.
			vbo
				usage: GL_STATIC_DRAW
				data: collection asFloat32Array.
			
			vbo boundDuring: [
				self lineProgram vertexAttrib: self lineProgram aPosLocation components: 2 stride: 8 offset: 0.
				GL checkForError].
			
			GL checkForError.
			self glLibrary lineWidth: w asFloat.
			GL checkForError.
			vbo draw: GL_LINE_STRIP from: 0 count: 2.
			GL checkForError]
]

{ #category : #accessing }
GLCanvas >> lineProgram [

	^ resources solidPolygonProgram
]

{ #category : #accessing }
GLCanvas >> origin [

	^ (transform localPointToGlobal: 0@0) truncated
]

{ #category : #accessing }
GLCanvas >> ovalPrograms [

	^ resources ovalPrograms
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
GLCanvas >> polygonPrograms [

	^ resources polygonPrograms
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
GLCanvas >> rectanglePrograms [

	^ resources rectanglePrograms
]

{ #category : #'drawing-support' }
GLCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix4x4 withScale: aPoint@1)
		during: aBlock
]

{ #category : #'setting-uniforms' }
GLCanvas >> setBitmapUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| clampMode |
	self bindAndUseProgram: aProgram during: [
		(RtFormStore form: aFillStyle form) glTextureDo: [:texture |
			texture boundDuring: [
				aProgram
					formOrigin: aFillStyle origin;
					formDirection: aFillStyle direction;
					formNormal: aFillStyle normal.
					
				clampMode := aFillStyle isTiled ifTrue: [GL_REPEAT] ifFalse: [GL_CLAMP_TO_EDGE].
								
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_S with: clampMode.
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_T with: clampMode.
				
				aBlock cull: aProgram]]]
]

{ #category : #'setting-uniforms' }
GLCanvas >> setGradientUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| ramp |
	self bindAndUseProgram: aProgram during: [
		ramp := aFillStyle pixelRamp.
		(RtFormStore form: (Form extent: ramp size @ 1 depth: 32 bits: ramp)) glTextureDo: [:texture |
			texture boundDuring: [
				aProgram
					gradientOrigin: aFillStyle origin;
					gradientDirection: aFillStyle direction;
					gradientRadial: aFillStyle radial;
					pixelRamp: 0.
				
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_S with: GL_CLAMP_TO_EDGE.
				self glLibrary texParameteri: GL_TEXTURE_2D with: GL_TEXTURE_WRAP_T with: GL_CLAMP_TO_EDGE.
				
				aBlock cull: aProgram]]]
]

{ #category : #'setting-uniforms' }
GLCanvas >> setSolidUniformsFrom: aFillStyle for: aProgram during: aBlock [

	self bindAndUseProgram: aProgram during: [
			aProgram color: aFillStyle asColor.
			
			aBlock cull: aProgram]
]

{ #category : #'setting-uniforms' }
GLCanvas >> setUniformsFrom: aFillStyle for: aDictionary during: aBlock [

	| program |
	aFillStyle isGradientFill
		ifTrue: [
			program := aDictionary at: #gradient.
			self setGradientUniformsFrom: aFillStyle for: program during: aBlock]
		ifFalse: [
			aFillStyle isBitmapFill
				ifTrue: [
					program :=  aDictionary at: #bitmap.
					self setBitmapUniformsFrom: aFillStyle for: program during: aBlock]
				ifFalse: [
					program :=  aDictionary at: #solid.
					self setSolidUniformsFrom: aFillStyle for: program during: aBlock]].
]

{ #category : #'drawing-images' }
GLCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [
	
	| store |
	self translateBy: aPoint during: [:c |
		store := RtFormStore form: stencilForm.
		self bindAndUseProgram: self stencilProgram during: [
			store glTextureDo: [:texture |
				texture boundDuring: [					
					self stencilProgram
						sourcePosition: sourceRect origin asFloatPoint / store extent asFloatPoint;
						sourceExtent: sourceRect extent asFloatPoint / store extent asFloatPoint;
						color: aColor;
						image: 0;
						mvp: transform * (Matrix4x4 withScale: store extent @ 1.0).
									
					self vbo boundDuring: [
						self stencilProgram vertexAttrib: self textureProgram aPosLocation components: 2 stride: 16 offset: 0.
						GL checkForError.
						self stencilProgram vertexAttrib: self textureProgram aTexCoordsLocation components: 2 stride: 16 offset: 8.
						GL checkForError].
					
					self vbo draw: GL_TRIANGLE_STRIP]]]]
]

{ #category : #accessing }
GLCanvas >> stencilProgram [

	^ resources stencilProgram
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

{ #category : #'drawing-images' }
GLCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo.
	self transformBy: aTransform during: [self image: aForm at: extraOffset sourceRect: sourceRect rule: nil]
]
