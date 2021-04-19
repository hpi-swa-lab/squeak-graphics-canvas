"
I am a canvas that uses OpenGL for drawing. To that end I need a framebuffer to render into.
You can open a window into which I will render a morph using GLCanvas openAndDraw: aMorph (You should set the position of the mroph to 0@0). For that to work, you need to have run GLFWLibrary updateInstance beforehand and the the image needs to be able to access the GLFW binaries (e.g. via LD_LIBRARY_PATH).
You can enable MSAA for my output by running GLCanvas openAndDraw: aMorph samples: numberOfSamples.
"
Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'extent',
		'framebuffer',
		'transform',
		'projectionMatrix',
		'clipRect',
		'resources'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core',
	#'squeak_changestamp' : ''
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
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

{
	#category : #example,
	#'squeak_changestamp' : ''
}
GLCanvas class >> exampleBrowser [
	"self exampleBrowser"
	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0.
	^ self openAndDraw: window
]

{
	#category : #example,
	#'squeak_changestamp' : ''
}
GLCanvas class >> exampleChineseCheckers [
	"self exampleChineseCheckers"
	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self openAndDraw: morph
]

{
	#category : #example,
	#'squeak_changestamp' : ''
}
GLCanvas class >> exampleChineseCheckersAA [
	"self exampleChineseCheckersAA"
	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self openAndDraw: morph samples: 16
]

{
	#category : #example,
	#'squeak_changestamp' : ''
}
GLCanvas class >> exampleWorld [
	"self exampleWorld"
	^ self openAndDraw: World
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> extent: aPoint framebuffer: glFrameBuffer [

	^ self new
		initializeWithExtent: aPoint framebuffer: glFrameBuffer;
		yourself
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> openAndDraw: anObject [

	^ self openAndDraw: anObject doing: []
	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> openAndDraw: anObject doing: aBlock [

	^ self openAndDraw: anObject doing: aBlock samples: 1
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
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

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> openAndDraw: anObject samples: samples [

	^ self openAndDraw: anObject doing: [] samples: samples
	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> openAndDrawCreatingMorphs: anObject [
	
	^ self openAndDraw: anObject doing: [:c | c getPixelData asMorph openInWorld]
	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : ''
}
GLCanvas class >> openAndDrawSavingImages: anObject [

	| frame |
	frame := 0.
	^ self openAndDraw: anObject doing: [:c |
		c getPixelData writePNGfileNamed: frame asString , '.png'.
		frame := frame + 1]
	
]

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 3/9/2021 14:34'
}
GLCanvas class >> profileUsing: anObject times: aNumber [

	| display testCanvas |
	display := RtDisplayFramebufferStore extent: anObject extent.
	display canvasDo: [:c | TimeProfileBrowser spyOn: [aNumber timesRepeat: [c fullDraw: anObject]]].
	GL destroy.
	
	testCanvas := FormCanvas extent: anObject extent.
	TimeProfileBrowser spyOn: [aNumber timesRepeat: [testCanvas fullDraw: anObject]].
	
]

{
	#category : #binding,
	#'squeak_changestamp' : ''
}
GLCanvas >> bindAndUseProgram: aProgram during: aBlock [
	
	self boundDuring: [
		aProgram useDuring: [
			aBlock cull: self]].
]

{
	#category : #binding,
	#'squeak_changestamp' : ''
}
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> clipBy: aRectangle during: aBlock [

	self clipRect: aRectangle during: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> clipRect [

	^ clipRect
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> clipRect: aRectangle during: aBlock [

	| previousClipRect |
	previousClipRect := clipRect.
	clipRect := aRectangle.
	self setScissorRectangle.
	
	aBlock cull: self.
	
	clipRect := previousClipRect.
	self setScissorRectangle.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/9/2021 14:31'
}
GLCanvas >> contentsOfArea: aRectangle into: aForm [
	
	| data numerOfBytes |
	GL readBuffer: GL_BACK.
	numerOfBytes := aRectangle area * 4.
	data := (ByteArray new: numerOfBytes).
	GL checkForError.
	
	GL
		readPixels: aRectangle left with: aRectangle top with: aRectangle width with: aRectangle height
		with: GL_BGRA with: GL_UNSIGNED_INT_8_8_8_8 with: data.
		
	GL checkForError.
	aForm bits: ((Bitmap new: numerOfBytes) copyFromByteArray: data).
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:18'
}
GLCanvas >> drawBasePolygon: numVertices [

	GL enable: GL_STENCIL_TEST.
	GL clear: GL_STENCIL_BUFFER_BIT.
	
	GL stencilFunc: GL_ALWAYS with: 0 with: 1.
	GL stencilOp: GL_INVERT with: GL_INVERT with: GL_INVERT.
	GL colorMask: GL_FALSE with: GL_FALSE with: GL_FALSE  with: GL_FALSE.
	
	GL drawArrays: GL_TRIANGLE_FAN with: 0 with: numVertices.
	
	GL stencilFunc: GL_EQUAL with: 1 with: 1.
	GL stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
	GL colorMask: GL_TRUE with: GL_TRUE with: GL_TRUE  with: GL_TRUE.
	
	GL drawArrays: GL_TRIANGLE_FAN with: 0 with: numVertices.
	
	GL disable: GL_STENCIL_TEST.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:48'
}
GLCanvas >> drawCharacter: character bitmapFont: bitmapFont position: position [
	"Draw the character's texture onto a rectangle. self fontProgram and bitmapFont texture need to be bound and the color for self fontProgram needs to be set"
	
	(bitmapFont hasGlyphOf: character) ifTrue: [ | sourceOffset |
		sourceOffset := bitmapFont offsetFor: character.
		
		GL checkForError.
		
		self fontProgram uniforms
			extent: (bitmapFont extentFor: character);
			offsetX: sourceOffset x asFloat;
			modelMatrix: transform * (Matrix4x4 withOffset: position).

		GL checkForError.
		GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4].
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:48'
}
GLCanvas >> drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	| vertexData |
	aProgram uniforms modelMatrix: transform.
	
	vertexData := Float32Array new: vertices size * 2 streamContents: [:s |
						vertices do: [:position |
							s nextPut: position x.
							s nextPut: position y]].
	
	self dynamicVBO data: vertexData.
	
	self drawBasePolygon: vertices size.
	self drawPolygonBorder: vertices size borderWidth: borderWidth borderColor: borderColor.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : ''
}
GLCanvas >> drawPolygon: vertices color: fillColor borderWidth: borderWidth borderColor: borderColor [

	self drawPolygon: vertices fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor.
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : ''
}
GLCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [
	
	self setUniformsFrom: aFillStyle for: self polygonPrograms during: [:aProgram |
		self drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:19'
}
GLCanvas >> drawPolygonBorder: numVertices borderWidth: borderWidth borderColor: borderColor [

	borderWidth isZero ifFalse: [
		self solidPolygonProgram color: borderColor.
		GL lineWidth: borderWidth asFloat.
		GL drawArrays: GL_LINE_LOOP with: 0 with: numVertices].
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 3/9/2021 18:11'
}
GLCanvas >> drawString: s from: firstIndex to: lastIndex in: boundsRect font: fontOrNil color: c [

	self bindAndUseProgram: self fontProgram during: [
		| bitmapFont x |
		self fontProgram uniforms color: c.
		
		x := 0.
		bitmapFont := resources font: fontOrNil.
		bitmapFont texture boundDuring: [	
			s
				from: firstIndex
				to: lastIndex
				do: [:character |
					self drawCharacter: character bitmapFont: bitmapFont position: boundsRect origin + (x @ 0).						
					x := x + (bitmapFont advanceFor: character)]]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:28'
}
GLCanvas >> dynamicVBO [

	^ resources dynamicVBO
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> extent [

	^ extent
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:49'
}
GLCanvas >> fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	aProgram uniforms
		extent: r extent;
		origin: r origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		modelMatrix: transform.
	
	GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : ''
}
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [
	
	self fillOval: r fillStyle: c borderWidth: borderWidth borderColor: borderColor.
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : ''
}
GLCanvas >> fillOval: r fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [
	
	self setUniformsFrom: aFillStyle for: self ovalPrograms during: [:aProgram |
		self fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> fontProgram [

	^ resources fontProgram
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : ''
}
GLCanvas >> frameAndFillRectangle: aRectangle fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [
	
	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : ''
}
GLCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [
	
	self flag: #todo. "jb: All non-simple border styles are still ignored."
	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: aFillStyle borderWidth: aBorderStyle width borderColor: aBorderStyle color.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:49'
}
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [
	
	aProgram uniforms
		extent: aRectangle extent;
		origin: aRectangle origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		cornerRadius: cornerRadius asFloat;
		modelMatrix: transform.
		
	GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : ''
}
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderWidth: bw borderColor: bc [
	
	self setUniformsFrom: aFillStyle for: self rectanglePrograms during: [:aProgram |
		self frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: bw borderColor: bc withProgram: aProgram].
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> framebuffer [

	^ framebuffer
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> framebuffer: aFrameBuffer [

	framebuffer := aFrameBuffer.
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> getPixelData [
	
	| form |
	form := Form extent: self extent depth: 32.
	self contentsOfArea: (Rectangle origin: 0@0 extent: self extent) into: form.
	^ form
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : ''
}
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	self translateBy: aPoint during: [:c |
		c paintImageStore: (RtFormStore form: aForm) sourceRect: sourceRect].
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 3/9/2021 16:50'
}
GLCanvas >> initializeWithExtent: aPoint framebuffer: aFrameBuffer [

	extent := aPoint.
	framebuffer := aFrameBuffer.
	
	resources := GL userData
					at: GLSharedCanvasResources
					ifAbsentPut: [ GLSharedCanvasResources new ].
	
	clipRect := 0 @ 0 extent: extent.
	transform := Matrix4x4 identity.
	
	projectionMatrix := Matrix4x4 ortho: clipRect near: 0 far: 1.
	resources programsDo: [:program |
		program uniforms projectionMatrix: projectionMatrix].
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 3/9/2021 16:49'
}
GLCanvas >> line: pt1 to: pt2 width: w color: c [
	
	| vbo |
	w > 0 ifTrue: [
		self bindAndUseProgram: self lineProgram during: [
			self lineProgram uniforms
				color: c;
				modelMatrix: transform.
			
			vbo := self dynamicVBO.
			vbo data: (Float32Array with: pt1 x with: pt1 y with: pt2 x with: pt2 y).
			
			GL lineWidth: w asFloat.
			GL checkForError.
			GL drawArrays: GL_LINE_STRIP with: 0 with: 2.
			GL checkForError]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> lineProgram [

	^ resources solidPolygonProgram
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> origin [

	^ (transform localPointToGlobal: 0@0) truncated
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> ovalPrograms [

	^ resources ovalPrograms
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : ''
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
	
	paragraph displayOn: self using: scanner at: bounds topLeft.
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> polygonPrograms [

	^ resources polygonPrograms
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:05'
}
GLCanvas >> quadVBO [

	^ resources quadVBO
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> rectanglePrograms [

	^ resources rectanglePrograms
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix4x4 withScale: aPoint@1)
		during: aBlock.
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:13'
}
GLCanvas >> setBitmapUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| clampMode |
	self bindAndUseProgram: aProgram during: [
		(RtFormStore form: aFillStyle form) glTextureDo: [:texture |
			texture boundDuring: [
				aProgram uniforms
					formOrigin: aFillStyle origin;
					formDirection: aFillStyle direction;
					formNormal: aFillStyle normal.
					
				clampMode := aFillStyle isTiled ifTrue: [GL_REPEAT] ifFalse: [GL_CLAMP_TO_EDGE].
				texture
					wrapS: clampMode;
					wrapT: clampMode.
				
				aBlock cull: aProgram]]].
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:14'
}
GLCanvas >> setGradientUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| ramp |
	self bindAndUseProgram: aProgram during: [
		ramp := aFillStyle pixelRamp.
		(RtFormStore form: (Form extent: ramp size @ 1 depth: 32 bits: ramp)) glTextureDo: [:texture |
			texture boundDuring: [
				aProgram uniforms
					gradientOrigin: aFillStyle origin;
					gradientDirection: aFillStyle direction;
					gradientRadial: aFillStyle radial;
					pixelRamp: 0.
				
				texture
					wrapS: GL_CLAMP_TO_EDGE;
					wrapT: GL_CLAMP_TO_EDGE.
				
				aBlock cull: aProgram]]].
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 3/9/2021 17:07'
}
GLCanvas >> setScissorRectangle [

	| screenTransform rect |
	screenTransform := (transform translatedBy: 0.0 @ extent y negated @ 0.0) scaledBy: 1.0 @ -1.0 @ 1.0. "flip vertically since screen coordinates have their origin in bottom left not top left"
	screenTransform preservesAxisAlignment ifTrue: [
		rect := (screenTransform localBoundsToGlobal: clipRect) expanded.
		GL
			scissor: rect left
			with: rect top
			with: rect width
			with: rect height].
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : 'stlu 3/9/2021 16:14'
}
GLCanvas >> setSolidUniformsFrom: aFillStyle for: aProgram during: aBlock [

	self bindAndUseProgram: aProgram during: [
		aProgram uniforms color: aFillStyle asColor.
		
		aBlock cull: aProgram].
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : ''
}
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

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 3/9/2021 18:10'
}
GLCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [
	
	| store |
	self translateBy: aPoint during: [:c |
		store := RtFormStore form: stencilForm.
		self bindAndUseProgram: self stencilProgram during: [
			store glTextureDo: [:texture |
				texture boundDuring: [					
					self stencilProgram uniforms
						sourcePosition: sourceRect origin asFloatPoint / store extent asFloatPoint;
						sourceExtent: sourceRect extent asFloatPoint / store extent asFloatPoint;
						color: aColor;
						modelMatrix: transform * (Matrix4x4 withScale: store extent @ 1.0).
					
					GL drawArrays: GL_TRIANGLE_STRIP with: 0 with: 4]]]].
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> stencilProgram [

	^ resources stencilProgram
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> textureProgram [

	^ resources textureProgram
]

{
	#category : #accessing,
	#'squeak_changestamp' : ''
}
GLCanvas >> transform [

	^ transform
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	
	aBlock cull: self.
	
	transform := previousTransform.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip |
	transformedClip := (aTransform globalBoundsToLocal: clipRect) expanded.
	self transform: transform * aTransform asMatrix4x4 during: [
		self clipRect: transformedClip during: aBlock].
	self setScissorRectangle.
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : ''
}
GLCanvas >> translateBy: aPoint during: aBlock [
	
	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock.
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : ''
}
GLCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo. "jb: Image does not get warped yet"
	self image: aForm at: extraOffset sourceRect: sourceRect rule: nil.
]
