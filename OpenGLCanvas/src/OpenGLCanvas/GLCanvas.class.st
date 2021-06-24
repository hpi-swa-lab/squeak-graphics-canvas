"
I am a canvas that uses OpenGL for drawing. To that end I need a framebuffer to render into.
You can open a window into which I will render a morph using GLCanvas openAndDraw: aMorph (You should set the position of the mroph to 0@0). For that to work, you need to have run GLFWLibrary updateInstance beforehand and the the image needs to be able to access the GLFW binaries (e.g. via LD_LIBRARY_PATH).
You can enable MSAA for my output by running GLCanvas openAndDraw: aMorph samples: numberOfSamples.
"
Class {
	#name : #GLCanvas,
	#superclass : #Canvas,
	#instVars : [
		'bounds',
		'framebuffer',
		'transform',
		'projectionMatrix',
		'clipRect',
		'resources'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGLCanvas-Core'
}

{
	#category : #'instance creation',
	#'squeak_changestamp' : 'stlu 6/17/2021 13:51'
}
GLCanvas class >> bounds: aRectangle framebuffer: glFrameBuffer [

	^ self new
		initializeWithBounds: aRectangle framebuffer: glFrameBuffer;
		yourself
]

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
GLCanvas class >> exampleBrowser [
	"self exampleBrowser"
	| window |
	window := (ToolBuilder build: (Browser new setClass: Morph selector: #submorphs)) position: 0 @ 0.
	^ self openAndDraw: window
]

{ #category : #example }
GLCanvas class >> exampleChineseCheckers [
	"self exampleChineseCheckers"
	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self openAndDraw: morph
]

{ #category : #example }
GLCanvas class >> exampleChineseCheckersAA [
	"self exampleChineseCheckersAA"
	| morph |
	morph := (ChineseCheckers new teams: #(2 5 ) autoPlay: {true. true}) openInWorld; position: 0@0.
	^ self openAndDraw: morph samples: 16
]

{ #category : #example }
GLCanvas class >> exampleWorld [
	"self exampleWorld"
	^ self openAndDraw: World
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

{ #category : #binding }
GLCanvas >> bindAndUseProgram: aProgram during: aBlock [
	
	self boundDuring: [
		aProgram useDuring: [
			aBlock cull: self]].
]

{ #category : #binding }
GLCanvas >> boundDuring: aBlock [

	framebuffer boundDuring: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:53'
}
GLCanvas >> bounds [

	^ bounds
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:56'
}
GLCanvas >> bounds: aRectangle [

	bounds := aRectangle.
	self projectionMatrix: (Matrix4x4 ortho: bounds near: 0 far: 1)
]

{ #category : #'drawing-support' }
GLCanvas >> clipBy: aRectangle during: aBlock [

	self clipRect: aRectangle during: aBlock.
]

{ #category : #accessing }
GLCanvas >> clipRect [

	^ clipRect
]

{ #category : #'drawing-support' }
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
	#'squeak_changestamp' : 'stlu 6/17/2021 13:27'
}
GLCanvas >> contentsOfArea: aRectangle into: aForm [
	
	| data numerOfBytes |
	GL readBuffer: GL_BACK.
	numerOfBytes := aRectangle area * 4.
	data := (ByteArray new: numerOfBytes).
	
	GL
		readPixels: aRectangle left with: aRectangle top with: aRectangle width with: aRectangle height
		with: GL_BGRA with: GL_UNSIGNED_INT_8_8_8_8 with: data.
	
	aForm bits: ((Bitmap new: numerOfBytes) copyFromByteArray: data).
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 6/17/2021 13:28'
}
GLCanvas >> drawBasePolygon: numVertices [

	GL enable: GL_STENCIL_TEST.
	GL clear: GL_STENCIL_BUFFER_BIT.
	
	GL stencilFunc: GL_ALWAYS with: 0 with: 1.
	GL stencilOp: GL_INVERT with: GL_INVERT with: GL_INVERT.
	GL colorMask: GL_FALSE with: GL_FALSE with: GL_FALSE  with: GL_FALSE.
	
	self vao drawArrays: GL_TRIANGLE_FAN count: numVertices.
	
	GL stencilFunc: GL_EQUAL with: 1 with: 1.
	GL stencilOp: GL_KEEP with: GL_KEEP with: GL_KEEP.
	GL colorMask: GL_TRUE with: GL_TRUE with: GL_TRUE  with: GL_TRUE.
	
	self vao drawArrays: GL_TRIANGLE_FAN count: numVertices.
	
	GL disable: GL_STENCIL_TEST.
]

{
	#category : #'drawing-text',
	#'squeak_changestamp' : 'stlu 6/17/2021 10:34'
}
GLCanvas >> drawCharacter: character bitmapFont: bitmapFont position: position [
	"Draw the character's texture onto a rectangle. self fontProgram and bitmapFont texture need to be bound and the color for self fontProgram needs to be set"
	
	(bitmapFont hasGlyphOf: character) ifTrue: [ | sourceOffset |
		sourceOffset := bitmapFont offsetFor: character.
		
		self fontProgram uniforms
			extent: (bitmapFont extentFor: character);
			offsetX: sourceOffset x asFloat;
			modelMatrix: transform * (Matrix4x4 withOffset: position).

		self vao drawArrays: GL_TRIANGLE_STRIP count: 4].
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 6/17/2021 13:31'
}
GLCanvas >> drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	| vertexData |
	aProgram uniforms modelMatrix: transform.
	
	vertexData := Float32Array new: vertices size * 2 streamContents: [:s |
						vertices do: [:position |
							s nextPut: position x asFloat.
							s nextPut: position y asFloat]].
	
	self dynamicVBO data: vertexData.
	
	self drawBasePolygon: vertices size.
	self drawPolygonBorder: vertices size borderWidth: borderWidth borderColor: borderColor.
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices color: fillColor borderWidth: borderWidth borderColor: borderColor [

	self drawPolygon: vertices fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor.
]

{ #category : #'drawing-polygons' }
GLCanvas >> drawPolygon: vertices fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [
	
	self setUniformsFrom: aFillStyle for: self polygonPrograms during: [:aProgram |
		self drawPolygon: vertices borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
]

{
	#category : #'drawing-polygons',
	#'squeak_changestamp' : 'stlu 6/17/2021 13:28'
}
GLCanvas >> drawPolygonBorder: numVertices borderWidth: borderWidth borderColor: borderColor [

	borderWidth isZero ifFalse: [
		self solidPolygonProgram uniforms color: borderColor.
		GL lineWidth: borderWidth asFloat.
		self vao drawArrays: GL_LINE_LOOP count: numVertices].
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
	#'squeak_changestamp' : 'stlu 6/17/2021 13:57'
}
GLCanvas >> extent [

	^ bounds extent
]

{
	#category : #'drawing-ovals',
	#'squeak_changestamp' : 'stlu 6/17/2021 10:35'
}
GLCanvas >> fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [

	aProgram uniforms
		extent: r extent;
		origin: r origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		modelMatrix: transform.
	
	self vao drawArrays: GL_TRIANGLE_STRIP count: 4.
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r color: c borderWidth: borderWidth borderColor: borderColor [
	
	self fillOval: r fillStyle: c borderWidth: borderWidth borderColor: borderColor.
]

{ #category : #'drawing-ovals' }
GLCanvas >> fillOval: r fillStyle: aFillStyle borderWidth: borderWidth borderColor: borderColor [
	
	self setUniformsFrom: aFillStyle for: self ovalPrograms during: [:aProgram |
		self fillOval: r borderWidth: borderWidth borderColor: borderColor withProgram: aProgram].
]

{ #category : #accessing }
GLCanvas >> fontProgram [

	^ resources fontProgram
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: aRectangle fillColor: fillColor borderWidth: borderWidth borderColor: borderColor [
	
	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: fillColor borderWidth: borderWidth borderColor: borderColor.
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRectangle: aRectangle fillStyle: aFillStyle borderStyle: aBorderStyle [
	
	self flag: #todo. "jb: All non-simple border styles are still ignored."
	self frameAndFillRoundRect: aRectangle radius: 0 fillStyle: aFillStyle borderWidth: aBorderStyle width borderColor: aBorderStyle color.
]

{
	#category : #'drawing-rectangles',
	#'squeak_changestamp' : 'stlu 6/17/2021 10:35'
}
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: borderWidth borderColor: borderColor withProgram: aProgram [
	
	aProgram uniforms
		extent: aRectangle extent;
		origin: aRectangle origin;
		borderColor: borderColor;
		borderWidth: borderWidth asFloat;
		cornerRadius: cornerRadius asFloat;
		modelMatrix: transform.
		
	self vao drawArrays: GL_TRIANGLE_STRIP count: 4.
]

{ #category : #'drawing-rectangles' }
GLCanvas >> frameAndFillRoundRect: aRectangle radius: cornerRadius fillStyle: aFillStyle borderWidth: bw borderColor: bc [
	
	self setUniformsFrom: aFillStyle for: self rectanglePrograms during: [:aProgram |
		self frameAndFillRoundRect: aRectangle radius: cornerRadius borderWidth: bw borderColor: bc withProgram: aProgram].
]

{ #category : #accessing }
GLCanvas >> framebuffer [

	^ framebuffer
]

{ #category : #accessing }
GLCanvas >> framebuffer: aFrameBuffer [

	framebuffer := aFrameBuffer.
]

{ #category : #accessing }
GLCanvas >> getPixelData [
	
	| form |
	form := Form extent: self extent depth: 32.
	self contentsOfArea: (Rectangle origin: 0@0 extent: self extent) into: form.
	^ form
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 6/24/2021 13:40'
}
GLCanvas >> image: aForm at: aPoint sourceRect: sourceRect rule: rule [

	| texture |
	self translateBy: aPoint during: [:c |
		self bindAndUseProgram: self textureProgram during: [
			texture := GLTexture2D create
						minificationFilter: GL_LINEAR;
						magnificationFilter: GL_LINEAR;
						yourself.
			texture boundDuring: [
				texture image: aForm.
				self textureProgram uniforms
					sourcePosition: (sourceRect origin / aForm extent) asFloatPoint;
					sourceExtent: (sourceRect extent / aForm extent) asFloatPoint;
					modelMatrix: transform * (Matrix4x4 withScale: aForm extent @ 1.0).
				
				self vao drawArrays: GL_TRIANGLE_STRIP count: 4].
			texture delete]].
]

{ #category : #'image stores' }
GLCanvas >> imageStoreClass [

	^ RtFramebufferStore
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:55'
}
GLCanvas >> initializeWithBounds: aRectangle framebuffer: aFrameBuffer [

	framebuffer := aFrameBuffer.
	resources := GL userData
					at: GLSharedCanvasResources
					ifAbsentPut: [ GLSharedCanvasResources new ].
	
	self bounds: aRectangle.
	self reset.
]

{
	#category : #drawing,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:29'
}
GLCanvas >> line: pt1 to: pt2 width: w color: c [
	
	w > 0 ifTrue: [
		self bindAndUseProgram: self lineProgram during: [
			self lineProgram uniforms
				color: c;
				modelMatrix: transform.
			
			self dynamicVBO data: (Float32Array with: pt1 x with: pt1 y with: pt2 x with: pt2 y).
			
			GL lineWidth: w asFloat.
			self vao drawArrays: GL_LINE_STRIP count: 2]].
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
	
	paragraph displayOn: self using: scanner at: bounds topLeft.
]

{ #category : #accessing }
GLCanvas >> polygonPrograms [

	^ resources polygonPrograms
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 13:54'
}
GLCanvas >> projectionMatrix: aMatrix [

	projectionMatrix := aMatrix.
	resources programsDo: [:program |
		program uniforms projectionMatrix: aMatrix].
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 3/9/2021 15:05'
}
GLCanvas >> quadVBO [

	^ resources quadVBO
]

{ #category : #accessing }
GLCanvas >> rectanglePrograms [

	^ resources rectanglePrograms
]

{
	#category : #initialization,
	#'squeak_changestamp' : 'stlu 6/17/2021 14:35'
}
GLCanvas >> reset [

	GL disable: GL_CULL_FACE.
	GL disable: GL_DEPTH_TEST.
	GLTexture activateTextureImageUnitAt: 0.
	GL enable: GL_BLEND.
	GL enable: GL_SCISSOR_TEST.
	GL blendFuncSeparate: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA with: GL_ONE with: GL_ONE.
	
	GL clearColor: (Color r: 0.1 g: 0.1 b: 0.1 alpha: 0.1).
	GL clear: (GL_COLOR_BUFFER_BIT bitOr: GL_DEPTH_BUFFER_BIT).

	clipRect := bounds.
	transform := Matrix4x4 identity.
]

{ #category : #'drawing-support' }
GLCanvas >> scaleBy: aPoint during: aBlock [
	
	self
		transform: transform * (Matrix4x4 withScale: aPoint@1)
		during: aBlock.
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : 'stlu 6/24/2021 13:36'
}
GLCanvas >> setBitmapUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| clampMode |
	self bindAndUseProgram: aProgram during: [
		| texture |
		texture := GLTexture2D create
					minificationFilter: GL_LINEAR;
					magnificationFilter: GL_LINEAR;
					yourself.
		texture image: aFillStyle form.
		texture boundDuring: [
			aProgram uniforms
				formOrigin: aFillStyle origin;
				formDirection: aFillStyle direction;
				formNormal: aFillStyle normal.
					
			clampMode := aFillStyle isTiled ifTrue: [GL_REPEAT] ifFalse: [GL_CLAMP_TO_EDGE].
			texture
				wrapS: clampMode;
				wrapT: clampMode.
			
			aBlock cull: aProgram].
		texture delete].
]

{
	#category : #'setting-uniforms',
	#'squeak_changestamp' : 'stlu 6/24/2021 13:36'
}
GLCanvas >> setGradientUniformsFrom: aFillStyle for: aProgram during: aBlock [

	| ramp texture |
	self bindAndUseProgram: aProgram during: [
		ramp := aFillStyle pixelRamp.
		texture := GLTexture2D create
						minificationFilter: GL_LINEAR;
						magnificationFilter: GL_LINEAR;
						yourself.
		texture image: (Form extent: ramp size @ 1 depth: 32 bits: ramp).
		texture boundDuring: [
			aProgram uniforms
				gradientOrigin: aFillStyle origin;
				gradientDirection: aFillStyle direction;
				gradientRadial: aFillStyle radial;
				pixelRamp: 0.
			
			texture
				wrapS: GL_CLAMP_TO_EDGE;
				wrapT: GL_CLAMP_TO_EDGE.
			
			aBlock cull: aProgram].
		texture delete].
]

{
	#category : #'drawing-support',
	#'squeak_changestamp' : 'stlu 6/17/2021 13:49'
}
GLCanvas >> setScissorRectangle [

	| screenTransform rect |
	screenTransform := (transform translatedBy: 0.0 @ bounds height negated @ 0.0) scaledBy: 1.0 @ -1.0 @ 1.0. "flip vertically since screen coordinates have their origin in bottom left not top left"
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

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/16/2021 17:33'
}
GLCanvas >> solidPolygonProgram [

	^ resources solidPolygonProgram
]

{
	#category : #'drawing-images',
	#'squeak_changestamp' : 'stlu 6/24/2021 13:37'
}
GLCanvas >> stencil: stencilForm at: aPoint sourceRect: sourceRect color: aColor [
	
	| texture |
	self translateBy: aPoint during: [:c |
		self bindAndUseProgram: self stencilProgram during: [
			texture := GLTexture2D create
						minificationFilter: GL_LINEAR;
						magnificationFilter: GL_LINEAR;
						yourself.
			texture boundDuring: [
				texture image: stencilForm.
				self stencilProgram uniforms
					sourcePosition: (sourceRect origin / stencilForm extent) asFloatPoint;
					sourceExtent: (sourceRect extent / stencilForm extent) asFloatPoint;
					color: aColor;
					modelMatrix: transform * (Matrix4x4 withScale: stencilForm extent @ 1.0).
				
				self vao drawArrays: GL_TRIANGLE_STRIP count: 4].
			texture delete]].
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

{ #category : #'drawing-support' }
GLCanvas >> transform: aMatrix during: aBlock [

	| previousTransform |
	previousTransform := transform.
	transform := aMatrix.
	
	aBlock cull: self.
	
	transform := previousTransform.
]

{ #category : #'drawing-support' }
GLCanvas >> transformBy: aTransform during: aBlock [

	| transformedClip |
	transformedClip := (aTransform globalBoundsToLocal: clipRect) expanded.
	self transform: transform * aTransform asMatrix4x4 during: [
		self clipRect: transformedClip during: aBlock].
	self setScissorRectangle.
]

{ #category : #'drawing-support' }
GLCanvas >> translateBy: aPoint during: aBlock [
	
	self
		transformBy: (Matrix4x4 withOffset: aPoint)
		during: aBlock.
]

{
	#category : #accessing,
	#'squeak_changestamp' : 'stlu 6/17/2021 10:34'
}
GLCanvas >> vao [

	^ resources vao
]

{ #category : #'drawing-images' }
GLCanvas >> warpImage: aForm transform: aTransform at: extraOffset sourceRect: sourceRect cellSize: cellSize [

	self flag: #todo. "jb: Image does not get warped yet"
	self image: aForm at: extraOffset sourceRect: sourceRect rule: nil.
]
