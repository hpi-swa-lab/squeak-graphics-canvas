"
This is the main interface to the OpenGL library. 

displayList
displayListAlpha

David A. Smith
"
Class {
	#name : #OpenGL,
	#superclass : #ExternalLibrary,
	#instVars : [
		'platform',
		'myHandle',
		'bufRect',
		'glExt',
		'extensions',
		'frontFace',
		'maxPortalDepth',
		'changeTexture',
		'test',
		'timeStamp',
		'formManager',
		'textureManager',
		'fontManager',
		'shaderManager',
		'glListRegistry',
		'isMirror',
		'inPortal3D',
		'camera',
		'forceWire',
		'numVtx',
		'numPrims',
		'inGLBlock',
		'distance',
		'harness',
		'eventPointer',
		'avatar',
		'forcePick',
		'forceHilite',
		'suppressPortals',
		'noSwap',
		'fogOn',
		'transparency',
		'matrixStack',
		'portalDepth',
		'bufferObjects',
		'usesGLFW'
	],
	#classVars : [
		'InstalledOpenGLLibrary'
	],
	#pools : [
		'GLExtConstants',
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Versions'
}

{ #category : #compiling }
OpenGL class >> addSelector: aSelector withMethod: aMethod [
	"Flush the installed OGL library to force relinking"
	InstalledOpenGLLibrary := nil.
	^super addSelector: aSelector withMethod: aMethod
]

{ #category : #'instance creation' }
OpenGL class >> defaultFlags [
	^ 1 "B3DSoftwareRenderer" + 2 "B3DHardwareRenderer" + 4 "B3DStencilBuffer" 
]

{ #category : #example }
OpenGL class >> example [	"OpenGL example"
	"A very simple OpenGL example"

	| ogl frames startTime deltaTime framesPerSec bounds font |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 400@400.
	ogl := OpenGL newIn: bounds.
	ogl ifNil:[^self error: 'Unable to create renderer'].
	[frames := 0.
	startTime := Time millisecondClockValue.
	[Sensor anyButtonPressed] whileFalse:[
		"start counting at second frame since first frame is penalized
		by the upload of the bitmap font outside of ogl."
		frames = 1 ifTrue:[startTime := Time millisecondClockValue].
		ogl beginFrame.

	"--- this is the actual scene content ---"

		ogl glDisable: GLDepthTest.	"for the simple example only"
		ogl glDisable: GLLighting.		"for the simple example only"

		ogl glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		ogl glClear: GLColorBufferBit.

		ogl glRotatef: 5.0 with: 0.0 with: 0.0 with: 1.0.
		ogl glColor3f: 1.0 with: 0.0 with: 0.0.

		ogl glBegin: GLPolygon.
			ogl glVertex2f: -0.7 with: -0.7.
			ogl glVertex2f:  0.7 with: -0.7.
			ogl glVertex2f:  0.7 with:  0.7.
			ogl glVertex2f: -0.7 with:  0.7.
		ogl glEnd.

	"--- here is the 2d overlay setup ---"

		ogl glMatrixMode: GLProjection.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glMatrixMode: GLModelview.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glTranslated: -1 with: 1 with: 0.0.
		ogl glScaled: (2.0 / bounds width) with: (-2.0 / bounds height) with: 1.0.
		ogl glDisable: GLDepthTest.
		ogl glEnable: GLBlend.
		ogl glBlendFunc: GLOne with: GLOneMinusSrcAlpha.

	"--- here is the 2d overlay rendering ---"
		deltaTime := Time millisecondsSince: startTime.
		framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
		
		"@@@@: Fixme. It appears as if #drawString: depends on glColor being set.
		Makes no sense but I'm not going to figure this out - probably some mishap
		wrt. GLLighting being disabled."
		ogl glColor3f: 0.0 with: 0.0 with: 0.0.
		ogl drawString: frames printString, ' frames: ', (framesPerSec truncateTo: 0.1), ' fps'
			at: 0@font height@0 font: font color: Color black.

		ogl glDisable: GLBlend.
		ogl glMatrixMode: GLModelview.
		ogl glPopMatrix.
		ogl glMatrixMode: GLProjection.
		ogl glPopMatrix.
		ogl glMatrixMode: GLModelview.

	"--- end the end frame operations"

		ogl endFrame.
		ogl swapBuffers.
		frames := frames + 1.
	].
	] ensure:[ogl destroy].
]

{ #category : #example }
OpenGL class >> exampleTex [	"OpenGL exampleTex"
	"A simple OpenGL example with texture"

	| ogl frames startTime deltaTime framesPerSec bounds font tex vertices texCoords |
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 400@400.
	ogl := OpenGL newIn: bounds.
	ogl ifNil:[^self error: 'Unable to create renderer'].
	[frames := 0.
	startTime := Time millisecondClockValue.
	tex := OGLTexture new form: (Display copy: (0@0 extent: 140@80)).
	vertices := #(-0.7 -0.4  0.7 -0.4  -0.7  0.4  0.7 0.4) as: FloatArray.
	texCoords := #(0.0 1.0  1.0 1.0  0.0 0.0  1.0 0.0) as: FloatArray.
	[Sensor anyButtonPressed] whileFalse:[
		"start counting at second frame since first frame is penalized
		by the upload of the bitmap font and texture outside of ogl."
		frames = 1 ifTrue:[startTime := Time millisecondClockValue].
		ogl beginFrame.

	"--- this is the actual scene content ---"

		ogl glDisable: GLDepthTest.	"for the simple example only"
		ogl glDisable: GLLighting.		"for the simple example only"

		ogl glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		ogl glClear: GLColorBufferBit.

		ogl glRotatef: 0.1 with: 0.0 with: 0.0 with: 1.0.
		ogl glColor3f: 1.0 with: 1.0 with: 1.0.
		ogl installTexture: tex.		"uploads only in first frame"
		ogl enableTexture: tex.
		ogl glVertexPointer: 2 with: GLFloat with: 0 with: vertices.
		ogl glTexCoordPointer: 2 with: GLFloat with: 0 with: texCoords.
		ogl glEnableClientState: GLVertexArray.
		ogl glEnableClientState: GLTextureCoordArray.
   		ogl glDrawArrays: GLTriangleStrip with: 0 with: vertices size // 2.
		ogl glDisableClientState: GLTextureCoordArray.
		ogl glDisableClientState: GLVertexArray.
		ogl disableTexture: tex.

	"--- here is the 2d overlay setup ---"

		ogl glMatrixMode: GLProjection.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glMatrixMode: GLModelview.
		ogl glPushMatrix.
		ogl glLoadIdentity.
		ogl glTranslated: -1 with: 1 with: 0.0.
		ogl glScaled: (2.0 / bounds width) with: (-2.0 / bounds height) with: 1.0.
		ogl glDisable: GLDepthTest.
		ogl glEnable: GLBlend.
		ogl glBlendFunc: GLOne with: GLOneMinusSrcAlpha.

	"--- here is the 2d overlay rendering ---"
		deltaTime := Time millisecondsSince: startTime.
		framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
		
		"@@@@: Fixme. It appears as if #drawString: depends on glColor being set.
		Makes no sense but I'm not going to figure this out - probably some mishap
		wrt. GLLighting being disabled."
		ogl glColor3f: 0.0 with: 0.0 with: 0.0.
		ogl drawString: frames printString, ' frames: ', (framesPerSec printShowingMaxDecimalPlaces: 1), ' fps'
			at: 0@font height@0 font: font color: Color black.

		ogl glDisable: GLBlend.
		ogl glMatrixMode: GLModelview.
		ogl glPopMatrix.
		ogl glMatrixMode: GLProjection.
		ogl glPopMatrix.
		ogl glMatrixMode: GLModelview.

	"--- end the end frame operations"

		ogl endFrame.
		ogl swapBuffers.
		frames := frames + 1.
	].
	] ensure:[ogl destroy]. ogl
]

{ #category : #islands }
OpenGL class >> howToPassAsArgument [
	^#passByIdentity:
]

{ #category : #'class initialization' }
OpenGL class >> initialize [
	"OpenGL initialize"
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.

]

{ #category : #primitives }
OpenGL class >> isAvailable [
	^self pluginVersion > 0
]

{ #category : #accessing }
OpenGL class >> moduleName [

	self flag: #todo. "for now common value for Linux"
	^ 'libGL.so'
]

{ #category : #'instance creation' }
OpenGL class >> newIn: bounds [
	^self newIn: bounds flags: self defaultFlags
]

{ #category : #'instance creation' }
OpenGL class >> newIn: bounds flags: flags [
	^(self new) initializeIn: bounds flags: flags
]

{ #category : #'class initialization' }
OpenGL class >> newInGLFW: bounds [
	^ (self new) initializeGLFWIn: bounds
]

{ #category : #primitives }
OpenGL class >> pluginVersion [
	"OpenGL pluginVersion"
	<primitive:'primitiveRendererVersion' module:'B3DAcceleratorPlugin'>
	^0
]

{ #category : #primitives }
OpenGL class >> primitiveSetVerboseLevel: newLevel [
	"Primitive. Set the reporting level for the engine. Values are
		0 - print NO information ever
		1 - print critical debug errors
		2 - print debug warnings
		3 - print extra information
		4 - print extra warnings
		5 - print information about primitive execution

	   10 - print information about each vertex and face
	"
	<primitive:'primitiveSetVerboseLevel' module:'B3DAcceleratorPlugin'>
]

{ #category : #'class initialization' }
OpenGL class >> shutDown [ 
	self allSubInstancesDo: [:ea | ea destroy; becomeForward: #glSuspended].

]

{ #category : #'class initialization' }
OpenGL class >> startUp [
	"Flush the installed OGLLib"
	InstalledOpenGLLibrary := nil.
]

{ #category : #testing }
OpenGL >> autoMipmap [
	"Answer whether we support automatic mipmap generation"
	^self extensions includes: #'GL_SGIS_generate_mipmap'
]

{ #category : #accessing }
OpenGL >> avatar [

	^ avatar.
]

{ #category : #accessing }
OpenGL >> avatar: atar [

	avatar := atar.
]

{ #category : #initialize }
OpenGL >> beginFrame [
	numVtx := numPrims := 0.
	textureManager beginFrame.
	forceHilite := nil.

"For future anti-aliasing work... 
 ARB_multisample requires changes in VM plugin glCreateRendererFlags.

	self glEnable: GLBlend.
	self glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha.
	self glEnable: GLMultisampleARB.  
	self glHint: GLMultisampleFilterHintNV with: GLNicest.
...."

	self glPixelStorei: GLUnpackAlignment with: 4.
	matrixStack := OrderedCollection new.
	portalDepth := 0.
	
	platform beginFrame: self
]

{ #category : #rendering }
OpenGL >> beginVertices: vertices normals: vtxNormals colors: vtxColors texCoords: vtxTexCoords [
	| size |

	vtxColors ifNotNil:[
		self glEnableClientState: GLColorArray.
		self glEnable: GLColorMaterial.
		self glColorPointer: 4 with: GLFloat with: 16 with: vtxColors.
	].
	vtxNormals ifNotNil:[
		self glEnableClientState: GLNormalArray.
		self glNormalPointer: GLFloat with: 12 with: vtxNormals.
	].
	vtxTexCoords ifNotNil:[
		size := vtxTexCoords contentsSize.
		self glEnableClientState: GLTextureCoordArray.
		self glTexCoordPointer: size with: GLFloat with: size*4 with: vtxTexCoords.
	].
	self glEnableClientState: GLVertexArray.
	self glVertexPointer: 3 with: GLFloat with: 12 with: vertices.

]

{ #category : #rendering }
OpenGL >> beginVerticesVBO: vertices normals: vtxNormals colors: vtxColors texCoords: vtxTexCoords [
	"this method accepts either the raw data or a bufferObjectID for each parameter"	

	vtxColors ifNotNil:[
		self glEnableClientState: GLColorArray.
		self glEnable: GLColorMaterial.

		(vtxColors isInteger) ifTrue: [
			self glBindBufferARB: GLArrayBufferARB with: vtxColors.
			self glColorPointer: 4 with: GLFloat with: 0 with: nil.
		]
		ifFalse: [ self glColorPointer: 4 with: GLFloat with: 0 with: vtxColors. ].
	].

	vtxNormals ifNotNil:[
		self glEnableClientState: GLNormalArray.

		(vtxNormals isInteger) ifTrue: [
			self glBindBufferARB: GLArrayBufferARB with: vtxNormals.
			self glNormalPointer: GLFloat with: 0 with: nil.
		] 	
		ifFalse: [ self glNormalPointer: GLFloat with: 0 with: vtxNormals. ].
	].

	vtxTexCoords ifNotNil:[
		self glEnableClientState: GLTextureCoordArray.

		(vtxTexCoords isInteger) ifTrue: [
			self glBindBufferARB: GLArrayBufferARB with: vtxTexCoords.
			self glTexCoordPointer: 2 with: GLFloat with: 0 with: nil. "$$ blah, assumes 2"
		]
		ifFalse: [ self glTexCoordPointer: 2 with: GLFloat with: 0 with: vtxTexCoords. ].
	].

	self glEnableClientState: GLVertexArray.

	(vertices isInteger) ifTrue: [
		self glBindBufferARB: GLArrayBufferARB with: vertices.
		self glVertexPointer: 3 with: GLFloat with: 0 with: nil.
	]
	ifFalse: [ self glVertexPointer: 3 with: GLFloat with: 0 with: vertices. ].

]

{ #category : #shaders }
OpenGL >> bindProgram: program [
	self glUseProgramObjectARB: program.
	^ true
]

{ #category : #deprecated }
OpenGL >> bindTexture: aTForm [
	changeTexture ifFalse:[^false].
	textureManager bindTexture: aTForm.
	^ true.
]

{ #category : #accessing }
OpenGL >> bufferObjects [
	^ bufferObjects.
]

{ #category : #initialize }
OpenGL >> bufferRect: box [
	"Set and validate the receiver's buffer rectangle"
	bufRect = box ifTrue:[^self].
	(self primRender: myHandle setBufferRectX: box left y: box top w: box width h: box height) ifNil:[
		"Failed to set the buffer rect. Destroy the receiver and start over."
		self destroy.
		^nil].
	"We did change the buffer rect; make sure our target is up to date"
	bufRect := box.
	^self
]

{ #category : #accessing }
OpenGL >> camera [
	^camera
]

{ #category : #accessing }
OpenGL >> camera: cam [
	camera := cam.
]

{ #category : #accessing }
OpenGL >> changeTexture [

	^ changeTexture.
]

{ #category : #accessing }
OpenGL >> changeTexture: bool [

	changeTexture := bool.
]

{ #category : #debugging }
OpenGL >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self glGetError.
	(error ~= 0) ifTrue: [self error: (self gluErrorString: error) ]

]

{ #category : #project }
OpenGL >> checkForErrors [
	| glerror |

	glerror := self glGetError.
	
	(glerror ~= GLNoError) 
		ifTrue: [ Transcript show: (self gluErrorString: glerror); cr ].
]

{ #category : #initialize }
OpenGL >> cleanup [
	"Clean up any unused display list"
	| any listRange |
	any := false.
	glListRegistry associationsDo:[:assoc|
		assoc key == nil ifTrue:[
			listRange := assoc value.
			self glDeleteLists: listRange first with: listRange last.
			any := true].
	].
	any ifTrue:[glListRegistry finalizeValues].

]

{ #category : #deprecated }
OpenGL >> deleteTexture: aTForm [
	
	textureManager deleteTexture: aTForm
]

{ #category : #initialize }
OpenGL >> destroy [
	glExt ifNotNil:[
		glExt ogl: nil.
		glExt := nil].
	usesGLFW ifTrue: [ GLFW destroyWindow: myHandle ].
	self primDestroyRenderer: myHandle.
	myHandle := nil.
]

{ #category : #deprecated }
OpenGL >> disableTexture: aTexture [
	changeTexture ifFalse:[^false].
	self glDisable: aTexture target.
	^ true.
]

{ #category : #accessing }
OpenGL >> distance [

	^ distance.
]

{ #category : #accessing }
OpenGL >> distance: dist [

	distance:= dist.
]

{ #category : #rendering }
OpenGL >> drawIndexed: mode faces: faces [ 

	| realMode |

	realMode := forceWire ifTrue: [GLLineStrip] ifFalse: [mode].

	numVtx := numVtx + faces size.
	numPrims := numPrims + (self primCount: faces size forMode: realMode).

	self 
		glDrawElements: realMode
		with: faces basicSize
		with: GLUnsignedInt 
		with: faces.


]

{ #category : #rendering }
OpenGL >> drawIndexed: mode faces: faces vertices: vertices normals: vtxNormals colors: vtxColors texCoords: vtxTexCoords [
	| size realMode |

	realMode := forceWire ifTrue: [GLLineStrip] ifFalse: [mode].

	numVtx := numVtx + faces size.
	numPrims := numPrims + (self primCount: faces size forMode: realMode).

	vtxColors ifNotNil:[
		self glEnableClientState: GLColorArray.
		self glEnable: GLColorMaterial.
		self glColorPointer: 4 with: GLFloat with: 16 with: vtxColors.
	].
	vtxNormals ifNotNil:[
		self glEnableClientState: GLNormalArray.
		self glNormalPointer: GLFloat with: 12 with: vtxNormals.
	].
	vtxTexCoords ifNotNil:[
		size := vtxTexCoords contentsSize.
		self glEnableClientState: GLTextureCoordArray.
		self glTexCoordPointer: size with: GLFloat with: size*4 with: vtxTexCoords.
	].
	self glEnableClientState: GLVertexArray.
	self glVertexPointer: 3 with: GLFloat with: 12 with: vertices.
	self 
		glDrawElements: realMode
		with: faces basicSize
		with: GLUnsignedInt 
		with: faces.

	vtxColors ifNotNil:[self glDisableClientState: GLColorArray].
	vtxNormals ifNotNil:[self glDisableClientState: GLNormalArray].
	vtxTexCoords ifNotNil:[self glDisableClientState: GLTextureCoordArray].
	self glDisableClientState: GLVertexArray.
	self glDisableClientState: GLColorArray.
	self glDisable: GLColorMaterial.

]

{ #category : #rendering }
OpenGL >> drawIndexedBufferObject: mode faces: faces elementBuffer: elementBufferObject [ 

	| realMode |

	realMode := forceWire ifTrue: [GLLineStrip] ifFalse: [mode].

	numVtx := numVtx + faces size.
	numPrims := numPrims + (self primCount: faces size forMode: realMode).

	self glBindBufferARB: GLElementArrayBufferARB with: elementBufferObject.

	self glDrawElements: realMode
		       with: faces byteSize
		       with: GLUnsignedInt 
		       with: nil.

	self glBindBufferARB: GLElementArrayBufferARB with: 0.


]

{ #category : #'text support' }
OpenGL >> drawString: s at: pt [

	^ self drawString: s at: pt font: nil color: Color blue
]

{ #category : #'text support' }
OpenGL >> drawString: s at: pt font: aFont color: aColor [
	self glRasterPos3f: pt x with: pt y with: pt z.
	self glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	fontManager drawString: s from: 1 to: s size font: (aFont ifNil:[TextStyle defaultFont])
]

{ #category : #'text support' }
OpenGL >> drawString: s at: pt font: aFont color: aColor align: align [
	self glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager drawString: s from: 1 to: s size font: (aFont ifNil:[((TextStyle named: 'Accuny')  ) defaultFont]) align: align.
]

{ #category : #'text support' }
OpenGL >> drawString: s from: startIndex to: stopIndex at: pt font: font [
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager drawString: s from: startIndex to: stopIndex font: (font ifNil:[TextStyle defaultFont]) align: nil.
]

{ #category : #'text support' }
OpenGL >> drawString: s from: startIndex to: stopIndex at: pt font: font align: align [
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager drawString: s from: startIndex to: stopIndex font: (font ifNil:[TextStyle defaultFont]) align: align.
]

{ #category : #'text support' }
OpenGL >> drawString: s from: startIndex to: stopIndex at: pt font: font color: aColor [
	self glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager drawString: s from: startIndex to: stopIndex font: (font ifNil:[TextStyle defaultFont]) align: nil.
]

{ #category : #'text support' }
OpenGL >> drawStringRect: extent at: pt color: aColor align: align [
	self glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager drawStringRect: extent align: align.
]

{ #category : #deprecated }
OpenGL >> enableTexture: aTexture [
	changeTexture ifFalse:[^false].
	"self glEnable: aTexture target."
	^ true.
]

{ #category : #rendering }
OpenGL >> end [

	self glDisableClientState: GLColorArray.
	self glDisableClientState: GLNormalArray.
	self glDisableClientState: GLTextureCoordArray.
	self glDisableClientState: GLVertexArray.
	self glDisableClientState: GLColorArray.
	self glDisable: GLColorMaterial.

]

{ #category : #initialize }
OpenGL >> endFrame [
	textureManager endFrame.
	self cleanup.
	matrixStack size > 0 ifTrue:[self error:'Unbalanced OGL matrix stack'].
	forceHilite ifNotNil: [self error: 'Unbalanced forceHilite.'].
	usesGLFW ifTrue: [GLFW pollEvents]
]

{ #category : #rendering }
OpenGL >> endVBO [

	self glBindBufferARB: GLArrayBufferARB with: 0.

	self glDisableClientState: GLColorArray.
	self glDisableClientState: GLNormalArray.
	self glDisableClientState: GLTextureCoordArray.
	self glDisableClientState: GLVertexArray.
	self glDisable: GLColorMaterial.

]

{ #category : #rendering }
OpenGL >> endVertices: vertices normals: vtxNormals colors: vtxColors texCoords: vtxTexCoords [

	vtxColors ifNotNil:[self glDisableClientState: GLColorArray].
	vtxNormals ifNotNil:[self glDisableClientState: GLNormalArray].
	vtxTexCoords ifNotNil:[self glDisableClientState: GLTextureCoordArray].
	self glDisableClientState: GLVertexArray.
	self glDisableClientState: GLColorArray.
	self glDisable: GLColorMaterial.

]

{ #category : #rendering }
OpenGL >> endVerticesVBO: vertices normals: vtxNormals colors: vtxColors texCoords: vtxTexCoords [

	self glBindBufferARB: GLArrayBufferARB with: 0.

	vtxColors ifNotNil:[self glDisableClientState: GLColorArray].
	vtxNormals ifNotNil:[self glDisableClientState: GLNormalArray].
	vtxTexCoords ifNotNil:[self glDisableClientState: GLTextureCoordArray].
	self glDisableClientState: GLVertexArray.
	self glDisable: GLColorMaterial.

]

{ #category : #accessing }
OpenGL >> enterPortal2D [
	"Note that we're starting a render through a 2D portal."
	portalDepth := portalDepth + 1.
]

{ #category : #debugging }
OpenGL >> errorString [

	| error |
	error := self glGetError.
	^ (error ~= GLNoError)
		ifTrue: [self gluErrorString: error]
		ifFalse: [nil]

]

{ #category : #accessing }
OpenGL >> eventPointer [

	^ eventPointer.
]

{ #category : #accessing }
OpenGL >> eventPointer: ep [

	eventPointer := ep.
]

{ #category : #extensions }
OpenGL >> extensions [
	"answer a set of extension strings for this renderer"
	| version |
	^extensions ifNil:[
		extensions := self reportedExtensions.

		"Many extensions are implicit in the reported OpenGL version and may not be reported via the extensions. There seems to be no rule for this - I have seen some extensions listed, some not, so we simply add all of them based on the OpenGL version we find here."
		version := self version.

		version >= 1.1 ifTrue:[
			extensions addAll: #(
				#'GL_EXT_blend_logic_op'
				#'GL_EXT_copy_texture'
				#'GL_EXT_polygon_offset'
				#'GL_EXT_subtexture'
				#'GL_EXT_texture'
				#'GL_EXT_texture_object'
				#'GL_EXT_vertex_array'
			).
		].

		version >= 1.2 ifTrue:[
			extensions addAll: #(
				#'GL_EXT_bgra'
				#'GL_EXT_blend_color'
				#'GL_EXT_draw_range_elements'
				#'GL_EXT_packed_pixels'
				#'GL_EXT_rescale_normal'
				#'GL_EXT_separate_specular_color'
				#'GL_EXT_texture3D'
				#'GL_SGIS_texture_edge_clamp'
			).
		].

		version >= 1.3 ifTrue:[
			extensions addAll: #(
				#'GL_ARB_multisample'
				#'GL_ARB_multitexture'
				#'GL_ARB_texture_border_clamp'
				#'GL_ARB_texture_compression'
				#'GL_ARB_texture_cube_map'
				#'GL_ARB_texture_env_add'
				#'GL_ARB_texture_env_combine'
				#'GL_ARB_texture_env_dot3'
				#'GL_ARB_transpose_matrix'
			).
		].

		version >= 1.4 ifTrue:[
			extensions addAll: #(
				#'GL_ARB_point_parameters'
				#'GL_ARB_texture_env_crossbar'
				#'GL_ARB_window_pos'
				#'GL_EXT_blend_func_separate'
				#'GL_EXT_fog_coord'
				#'GL_EXT_multi_draw_arrays'
				#'GL_EXT_secondary_color'
				#'GL_EXT_stencil_wrap'
				#'GL_NV_blend_square'
				#'GL_SGIS_generate_mipmap'
				#'GL_ARB_depth_texture'
				#'GL_ARB_shadow'
				#'GL_ARB_texture_mirrored_repeat'
				#'GL_EXT_texture_lod_bias'
				#'GL_SGIS_texture_lod'
			).
		].

		version >= 1.5 ifTrue:[
			extensions addAll: #(
				#'GL_ARB_vertex_buffer_object'
				#'GL_ARB_occlusion_query'
				#'GL_EXT_shadow_funcs'
			).
		].

		extensions].
]

{ #category : #accessing }
OpenGL >> extent [
	^bufRect extent
]

{ #category : #accessing }
OpenGL >> flipFace [
	
	frontFace = GLCcw ifTrue:[frontFace := GLCw] ifFalse:[frontFace:= GLCcw].
	self setCull.
]

{ #category : #accessing }
OpenGL >> fogOn:bool [

	(fogOn:= bool) ifTrue:[ self glEnable: GLFog.]
	ifFalse:[self glDisable: GLFog.].
]

{ #category : #accessing }
OpenGL >> fontManager [
	^fontManager
]

{ #category : #accessing }
OpenGL >> forceHilite [

	"If non-nil, the color returned is to override all material coloring...
       used for interactive highlighting."

	^ forceHilite
]

{ #category : #accessing }
OpenGL >> forceHilite: aColor [

	"Install the given color to force hiliting until cleared.
       Return true if accepted, false if the hilite state has already been set."

	aColor ifNotNil: [
		forceHilite ifNil: [
			forceHilite := aColor.
			^ true.
		] ifNotNil: [
			^ false.
		].
	] ifNil: [
		forceHilite ifNil: [
			^ false.
		] ifNotNil: [
			forceHilite := nil.
			^ true.
		].
	].
]

{ #category : #accessing }
OpenGL >> forcePick [
	^forcePick
]

{ #category : #accessing }
OpenGL >> forcePick: aBoolean [
	forcePick := aBoolean
]

{ #category : #accessing }
OpenGL >> forceWire [

	^ forceWire.
]

{ #category : #accessing }
OpenGL >> forceWire: bool [

	forceWire := bool.
]

{ #category : #accessing }
OpenGL >> formManager [
	^formManager
]

{ #category : #accessing }
OpenGL >> formManager: aTFormManager [
	formManager := aTFormManager
]

{ #category : #'text support' }
OpenGL >> frameStringRect: extent at: pt color: aColor align: align [
	self glColor4f: aColor red with: aColor green with: aColor blue with: aColor alpha.
	self glRasterPos3f: pt x with: pt y with: pt z.
	fontManager frameStringRect: extent align: align.
]

{ #category : #accessing }
OpenGL >> frontFace [
	
	^ frontFace.
]

{ #category : #'buffer objects' }
OpenGL >> generateBufferObject: bufferArray mode: mode [
	^ self generateBufferObject: bufferArray type: GLArrayBufferARB mode: mode
]

{ #category : #'buffer objects' }
OpenGL >> generateBufferObject: bufferArray type: type mode: mode [
	| holder bufferID |

	bufferArray ifNil: [ ^ nil. ]. 

	holder := WordArray new: 1.
	self glGenBuffersARB: 1 with: holder.

	bufferID := holder at: 1.
	self glBindBufferARB: type with: bufferID.
	self glBufferDataARB: type 
		with: bufferArray byteSize with: bufferArray with: mode.

	^ bufferID
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glAttachObjectARB: containerObj with: obj [
	"This method was automatically generated"
	^glExt glAttachObjectARB: containerObj with: obj
]

{ #category : #'GL_ARB_vertex_shader' }
OpenGL >> glBindAttribLocationARB: programObj with: index with: name [
	"This method was automatically generated"
	^glExt glBindAttribLocationARB: programObj with: index with: name
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glBindBufferARB: target with: buffer [
	"This method was automatically generated"
	^glExt glBindBufferARB: target with: buffer
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glBindFramebufferEXT: target with: buffer [
	"This method was automatically generated"
	^glExt glBindFramebufferEXT: target with: buffer
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glBindProgramARB: target with: program [
	"This method was automatically generated"
	^glExt glBindProgramARB: target with: program
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glBindRenderbufferEXT: target with: buffer [
	"This method was automatically generated"
	^glExt glBindRenderbufferEXT: target with: buffer
]

{ #category : #'GL_EXT_framebuffer_blit' }
OpenGL >> glBlitFramebufferEXT: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter [
	"This method was automatically generated"
	^glExt glBlitFramebufferEXT: srcX0 with: srcY0 with: srcX1 with: srcY1 with: dstX0 with: dstY0 with: dstX1 with: dstY1 with: mask with: filter
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glBufferDataARB: target with: size with: data with: usage [
	"This method was automatically generated"
	^glExt glBufferDataARB: target with: size with: data with: usage
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glBufferSubDataARB: target with: offset with: size with: data [
	"This method was automatically generated"
	^glExt glBufferSubDataARB: target with: offset with: size with: data
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glCheckFramebufferStatusEXT: target [
	"This method was automatically generated"
	^glExt glCheckFramebufferStatusEXT: target
]

{ #category : #'GL_ARB_multitexture' }
OpenGL >> glClientActiveTextureARB: texture [
	"This method was automatically generated"
	^glExt glClientActiveTextureARB: texture
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glCompileShaderARB: shaderObj [
	"This method was automatically generated"
	^glExt glCompileShaderARB: shaderObj
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexImage1DARB: target with: level with: internalformat with: width with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage1DARB: target with: level with: internalformat with: width with: border with: imageSize with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexImage2DARB: target with: level with: internalformat with: width with: height with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage2DARB: target with: level with: internalformat with: width with: height with: border with: imageSize with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexImage3DARB: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexImage3DARB: target with: level with: internalformat with: width with: height with: depth with: border with: imageSize with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexSubImage1DARB: target with: level with: xoffset with: width with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage1DARB: target with: level with: xoffset with: width with: aFormat with: imageSize with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexSubImage2DARB: target with: level with: xoffset with: yoffset with: width with: height with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage2DARB: target with: level with: xoffset with: yoffset with: width with: height with: aFormat with: imageSize with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glCompressedTexSubImage3DARB: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: aFormat with: imageSize with: data [
	"This method was automatically generated"
	^glExt glCompressedTexSubImage3DARB: target with: level with: xoffset with: yoffset with: zoffset with: width with: height with: depth with: aFormat with: imageSize with: data
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glCreateProgramObjectARB [
	"This method was automatically generated"
	^glExt glCreateProgramObjectARB
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glCreateShaderObjectARB: shaderType [
	"This method was automatically generated"
	^glExt glCreateShaderObjectARB: shaderType
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glDeleteBuffersARB: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteBuffersARB: n with: buffers
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glDeleteFramebuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteFramebuffersEXT: n with: buffers
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glDeleteObjectARB: obj [
	"This method was automatically generated"
	^glExt glDeleteObjectARB: obj
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glDeleteProgramsARB: n with: programs [
	"This method was automatically generated"
	^glExt glDeleteProgramsARB: n with: programs
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glDeleteRenderbuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glDeleteRenderbuffersEXT: n with: buffers
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glDetachObjectARB: containerObj with: attachedObj [
	"This method was automatically generated"
	^glExt glDetachObjectARB: containerObj with: attachedObj
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glDisableVertexAttribArrayARB: index [
	"This method was automatically generated"
	^glExt glDisableVertexAttribArrayARB: index
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glEnableVertexAttribArrayARB: index [
	"This method was automatically generated"
	^glExt glEnableVertexAttribArrayARB: index
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glFramebufferRenderbufferEXT: target with: attachment with: renderbuffertarget with: renderbuffer [
	"This method was automatically generated"
	^glExt glFramebufferRenderbufferEXT: target with: attachment with: renderbuffertarget with: renderbuffer
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glFramebufferTexture1DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was automatically generated"
	^glExt glFramebufferTexture1DEXT: target with: attachment with: textarget with: texture with: level
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glFramebufferTexture2DEXT: target with: attachment with: textarget with: texture with: level [
	"This method was automatically generated"
	^glExt glFramebufferTexture2DEXT: target with: attachment with: textarget with: texture with: level
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glFramebufferTexture3DEXT: target with: attachment with: textarget with: texture with: level with: zoffset [
	"This method was automatically generated"
	^glExt glFramebufferTexture3DEXT: target with: attachment with: textarget with: texture with: level with: zoffset
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glGenBuffersARB: n with: buffers [
	"This method was automatically generated"
	^glExt glGenBuffersARB: n with: buffers
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glGenFramebuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glGenFramebuffersEXT: n with: buffers
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGenProgramsARB: n with: programs [
	"This method was automatically generated"
	^glExt glGenProgramsARB: n with: programs
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glGenRenderbuffersEXT: n with: buffers [
	"This method was automatically generated"
	^glExt glGenRenderbuffersEXT: n with: buffers
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glGenerateMipmapEXT: target [
	"This method was automatically generated"
	^glExt glGenerateMipmapEXT: target
]

{ #category : #'GL_ARB_vertex_shader' }
OpenGL >> glGetActiveAttribARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was automatically generated"
	^glExt glGetActiveAttribARB: programObj with: index with: maxLength with: length with: size with: type with: name
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetActiveUniformARB: programObj with: index with: maxLength with: length with: size with: type with: name [
	"This method was automatically generated"
	^glExt glGetActiveUniformARB: programObj with: index with: maxLength with: length with: size with: type with: name
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetAttachedObjectsARB: containerObj with: maxCount with: count with: obj [
	"This method was automatically generated"
	^glExt glGetAttachedObjectsARB: containerObj with: maxCount with: count with: obj
]

{ #category : #'GL_ARB_vertex_shader' }
OpenGL >> glGetAttribLocationARB: programObj with: name [
	"This method was automatically generated"
	^glExt glGetAttribLocationARB: programObj with: name
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glGetBufferParameterivARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetBufferParameterivARB: target with: pname with: params
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glGetBufferPointervARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetBufferPointervARB: target with: pname with: params
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glGetBufferSubDataARB: target with: offset with: size with: data [
	"This method was automatically generated"
	^glExt glGetBufferSubDataARB: target with: offset with: size with: data
]

{ #category : #'GL_ARB_texture_compression' }
OpenGL >> glGetCompressedTexImageARB: target with: lod with: img [
	"This method was automatically generated"
	^glExt glGetCompressedTexImageARB: target with: lod with: img
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glGetFramebufferAttachmentParameterivEXT: target with: attachment with: pname with: params [
	"This method was automatically generated"
	^glExt glGetFramebufferAttachmentParameterivEXT: target with: attachment with: pname with: params
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetHandleARB: pname [
	"This method was automatically generated"
	^glExt glGetHandleARB: pname
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetInfoLogARB: obj with: maxLength with: length with: infoLog [
	"This method was automatically generated"
	^glExt glGetInfoLogARB: obj with: maxLength with: length with: infoLog
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetObjectParameterfvARB: obj with: pname with: params [
	"This method was automatically generated"
	^glExt glGetObjectParameterfvARB: obj with: pname with: params
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetObjectParameterivARB: obj with: pname with: params [
	"This method was automatically generated"
	^glExt glGetObjectParameterivARB: obj with: pname with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramEnvParameterdvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramEnvParameterdvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramEnvParameterfvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramEnvParameterfvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramLocalParameterdvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramLocalParameterdvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramLocalParameterfvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glGetProgramLocalParameterfvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramStringARB: target with: pname with: string [
	"This method was automatically generated"
	^glExt glGetProgramStringARB: target with: pname with: string
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetProgramivARB: target with: pname with: params [
	"This method was automatically generated"
	^glExt glGetProgramivARB: target with: pname with: params
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glGetRenderbufferParameterivEXT: target with: pnames with: params [
	"This method was automatically generated"
	^glExt glGetRenderbufferParameterivEXT: target with: pnames with: params
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetShaderSourceARB: obj with: maxLength with: length with: source [
	"This method was automatically generated"
	^glExt glGetShaderSourceARB: obj with: maxLength with: length with: source
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetUniformLocationARB: programObj with: name [
	"This method was automatically generated"
	^glExt glGetUniformLocationARB: programObj with: name
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetUniformfvARB: programObj with: location with: params [
	"This method was automatically generated"
	^glExt glGetUniformfvARB: programObj with: location with: params
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glGetUniformivARB: programObj with: location with: params [
	"This method was automatically generated"
	^glExt glGetUniformivARB: programObj with: location with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetVertexAttribPointervARB: index with: pname with: pointer [
	"This method was automatically generated"
	^glExt glGetVertexAttribPointervARB: index with: pname with: pointer
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetVertexAttribdvARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribdvARB: index with: pname with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetVertexAttribfvARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribfvARB: index with: pname with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glGetVertexAttribivARB: index with: pname with: params [
	"This method was automatically generated"
	^glExt glGetVertexAttribivARB: index with: pname with: params
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glIsBufferARB: buffer [
	"This method was automatically generated"
	^glExt glIsBufferARB: buffer
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glIsFramebufferEXT: buffer [
	"This method was automatically generated"
	^glExt glIsFramebufferEXT: buffer
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glIsProgramARB: program [
	"This method was automatically generated"
	^glExt glIsProgramARB: program
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glIsRenderbufferEXT: buffer [
	"This method was automatically generated"
	^glExt glIsRenderbufferEXT: buffer
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glLinkProgramARB: programObj [
	"This method was automatically generated"
	^glExt glLinkProgramARB: programObj
]

{ #category : #'GL_ARB_transpose_matrix' }
OpenGL >> glLoadTransposeMatrixf: m [
	"This method was automatically generated"
	^glExt glLoadTransposeMatrixf: m
]

{ #category : #'GL_EXT_compiled_vertex_array' }
OpenGL >> glLockArraysEXT: first with: count [
	"This method was automatically generated"
	^glExt glLockArraysEXT: first with: count
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glMapBufferARB: target with: access [
	"This method was automatically generated"
	^glExt glMapBufferARB: target with: access
]

{ #category : #'GL_ARB_transpose_matrix' }
OpenGL >> glMultTransposeMatrixf: m [
	"This method was automatically generated"
	^glExt glMultTransposeMatrixf: m
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramEnvParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4dARB: target with: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramEnvParameter4dvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4dvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramEnvParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4fARB: target with: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramEnvParameter4fvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramEnvParameter4fvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramLocalParameter4dARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4dARB: target with: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramLocalParameter4dvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4dvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramLocalParameter4fARB: target with: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4fARB: target with: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramLocalParameter4fvARB: target with: index with: params [
	"This method was automatically generated"
	^glExt glProgramLocalParameter4fvARB: target with: index with: params
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glProgramStringARB: target with: format with: len with: string [
	"This method was automatically generated"
	^glExt glProgramStringARB: target with: format with: len with: string
]

{ #category : #'GL_EXT_framebuffer_object' }
OpenGL >> glRenderbufferStorageEXT: target with: internalformat with: width with: height [
	"This method was automatically generated"
	^glExt glRenderbufferStorageEXT: target with: internalformat with: width with: height
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glShaderSourceARB: shaderObj with: count with: string with: length [
	"This method was automatically generated"
	^glExt glShaderSourceARB: shaderObj with: count with: string with: length
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform1fARB: location with: v0 [
	"This method was automatically generated"
	^glExt glUniform1fARB: location with: v0
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform1fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform1fvARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform1iARB: location with: v0 [
	"This method was automatically generated"
	^glExt glUniform1iARB: location with: v0
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform1ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform1ivARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform2fARB: location with: v0 with: v1 [
	"This method was automatically generated"
	^glExt glUniform2fARB: location with: v0 with: v1
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform2fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform2fvARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform2iARB: location with: v0 with: v1 [
	"This method was automatically generated"
	^glExt glUniform2iARB: location with: v0 with: v1
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform2ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform2ivARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform3fARB: location with: v0 with: v1 with: v2 [
	"This method was automatically generated"
	^glExt glUniform3fARB: location with: v0 with: v1 with: v2
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform3fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform3fvARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform3iARB: location with: v0 with: v1 with: v2 [
	"This method was automatically generated"
	^glExt glUniform3iARB: location with: v0 with: v1 with: v2
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform3ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform3ivARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform4fARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was automatically generated"
	^glExt glUniform4fARB: location with: v0 with: v1 with: v2 with: v3
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform4fvARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform4fvARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform4iARB: location with: v0 with: v1 with: v2 with: v3 [
	"This method was automatically generated"
	^glExt glUniform4iARB: location with: v0 with: v1 with: v2 with: v3
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniform4ivARB: location with: count with: value [
	"This method was automatically generated"
	^glExt glUniform4ivARB: location with: count with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniformMatrix2fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix2fvARB: location with: count with: transpose with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniformMatrix3fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix3fvARB: location with: count with: transpose with: value
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUniformMatrix4fvARB: location with: count with: transpose with: value [
	"This method was automatically generated"
	^glExt glUniformMatrix4fvARB: location with: count with: transpose with: value
]

{ #category : #'GL_EXT_compiled_vertex_array' }
OpenGL >> glUnlockArraysEXT [
	"This method was automatically generated"
	^glExt glUnlockArraysEXT
]

{ #category : #'GL_ARB_vertex_buffer_object' }
OpenGL >> glUnmapBufferARB: target [
	"This method was automatically generated"
	^glExt glUnmapBufferARB: target
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glUseProgramObjectARB: programObj [
	"This method was automatically generated"
	^glExt glUseProgramObjectARB: programObj
]

{ #category : #'GL_ARB_shader_objects' }
OpenGL >> glValidateProgramARB: programObj [
	"This method was automatically generated"
	^glExt glValidateProgramARB: programObj
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1dARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1dARB: index with: x
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1dvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1fARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1fARB: index with: x
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1fvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1sARB: index with: x [
	"This method was automatically generated"
	^glExt glVertexAttrib1sARB: index with: x
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib1svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib1svARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2dARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2dARB: index with: x with: y
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2dvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2fARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2fARB: index with: x with: y
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2fvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2sARB: index with: x with: y [
	"This method was automatically generated"
	^glExt glVertexAttrib2sARB: index with: x with: y
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib2svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib2svARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3dARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3dARB: index with: x with: y with: z
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3dvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3fARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3fARB: index with: x with: y with: z
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3fvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3sARB: index with: x with: y with: z [
	"This method was automatically generated"
	^glExt glVertexAttrib3sARB: index with: x with: y with: z
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib3svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib3svARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NbvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NbvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NivARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NsvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NsvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NubARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4NubARB: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NubvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NubvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NuivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NuivARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4NusvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4NusvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4bvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4bvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4dARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4dARB: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4dvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4dvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4fARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4fARB: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4fvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4fvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4ivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4ivARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4sARB: index with: x with: y with: z with: w [
	"This method was automatically generated"
	^glExt glVertexAttrib4sARB: index with: x with: y with: z with: w
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4svARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4svARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4ubvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4ubvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4uivARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4uivARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttrib4usvARB: index with: v [
	"This method was automatically generated"
	^glExt glVertexAttrib4usvARB: index with: v
]

{ #category : #'GL_ARB_vertex_program' }
OpenGL >> glVertexAttribPointerARB: index with: size with: type with: normalized with: stride with: pointer [
	"This method was automatically generated"
	^glExt glVertexAttribPointerARB: index with: size with: type with: normalized with: stride with: pointer
]

{ #category : #accessing }
OpenGL >> glfwWindow [
	self assert: usesGLFW.
	^ myHandle
]

{ #category : #'Keyword API' }
OpenGL >> gluErrorString: error [
	"GLubyte* gluErrorString(GLenum error);"
	| explainedError |
	
	explainedError := error.

	(error = 1280) ifTrue: [ explainedError := 'invalid enum' ].
	(error = 1281) ifTrue: [ explainedError := 'invalid value' ].
	(error = 1282) ifTrue: [ explainedError := 'invalid operation' ].
	(error = 1283) ifTrue: [ explainedError := 'stack overflow' ].
	(error = 1284) ifTrue: [ explainedError := 'stack underflow' ].
	(error = 1285) ifTrue: [ explainedError := 'out of memory' ].

	^ 'gl error: ', explainedError


]

{ #category : #accessing }
OpenGL >> harness [

	^ harness.
]

{ #category : #accessing }
OpenGL >> harness: h [

	harness := h.
]

{ #category : #testing }
OpenGL >> hasArbVertexBufferObject [
	"Answer whether we support vertex buffer objects"
	^self hasExtension: #'GL_ARB_vertex_buffer_object'
]

{ #category : #testing }
OpenGL >> hasArbVertexProgram [
	"Answer whether we support vertex programs"
	^self hasExtension: #'GL_ARB_vertex_program'
]

{ #category : #extensions }
OpenGL >> hasExtension: extName [
	^self extensions includes: extName
]

{ #category : #initialize }
OpenGL >> identifyPlatform [
	Smalltalk platformName = 'Win32' ifTrue:[^GLWindowsPlatform].
	Smalltalk platformName = 'unix'
		ifTrue:
			[(Smalltalk windowSystemName = 'Quartz')
				"implicitly big endian"
				ifTrue: [ self shouldBeImplemented ].
				"default to X11 window system"
				Smalltalk isLittleEndian
					ifTrue: [ ^GLX11LEPlatform ]
					ifFalse: [ ^GLX11BEPlatform ]].
	Smalltalk platformName = 'Mac OS' ifTrue:[
		Smalltalk osVersion asNumber < 1000 
			ifTrue: [ self shouldBeImplemented ]
			ifFalse:[ ^GLMacOSPlatform ].
	].
	^self error:'Cannot identify platform'
]

{ #category : #accessing }
OpenGL >> inGLBlock [

	^ inGLBlock.
]

{ #category : #accessing }
OpenGL >> inPortal2D [
	"Are we rendering through a 2D portal?"
	^ portalDepth > 0
]

{ #category : #accessing }
OpenGL >> inPortal3D [

	^ inPortal3D.
]

{ #category : #accessing }
OpenGL >> inPortal3D: bool [

	inPortal3D := bool.
]

{ #category : #initialize }
OpenGL >> initFrustum: angle bounds: bounds zNear: nVal zFar: fVal [

	| aspect |
	aspect := (bounds width/bounds height) asFloat.
  	self glMatrixMode: GLProjection.
  	self glLoadIdentity.
	self gluPerspective:angle aspect: aspect zNear: nVal zFar: fVal.
  	self glMatrixMode: GLModelview.
  	self glLoadIdentity.
  	self glViewport:bounds left with:bounds top with: bounds width with: bounds height.

]

{ #category : #initialize }
OpenGL >> initialize [
	platform := self identifyPlatform new.
	"the following makes sure that the FFI link library name is set correctly for this platform"
	self privateInstallLibrary: platform openGLLibraryName.
	textureManager := OGLTextureManager new initialize: self.
	glListRegistry := WeakIdentityKeyDictionary new.
	fontManager := OGLFontManager new initialize: self.
	shaderManager := OGLShaderManager new initialize: self.
	timeStamp := 0.
	frontFace := GLCcw.
	maxPortalDepth := 5. "arbitrary value, probably should be less than 8."
	changeTexture := true.
	test := false.
	"instance := 	instance := HPTime getRealTimeAsMilliseconds." "timestamp of this ogl instance"
	isMirror := false.
	portalDepth := 0.		"Counts 2D portal render depth."
	inPortal3D := false.
	self forceWire: false.
	inGLBlock := false.
	forcePick := false.
	forceHilite := nil.
	suppressPortals := false.
	noSwap := false.
	fogOn := false.
	transparency := 1.0.
	bufferObjects := Dictionary new.
	super initialize.
]

{ #category : #initialize }
OpenGL >> initializeGLFWIn: bounds [
	usesGLFW := true.
	
	GLFW init.
	GLFW windowHint: GLFW CONTEXT_VERSION_MAJOR value: self majorVersion.
	GLFW windowHint: GLFW CONTEXT_VERSION_MINOR value: self minorVersion.
	
	myHandle := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	self makeCurrentDuring: [GLFW swapInterval: 1].
	
	"GLFW setCursorPosCallback: myHandle with: (Callback signature: #(void (*)(const void *, double, double)) block: [:win :x :y | Transcript showln: {'move'. x. y}]) thunk.
	GLFW setMouseButtonCallback: myHandle with: (Callback signature: #(void (*)(const void *, int, int, int)) block: [:win :x :y :z | Transcript showln: {'click'. x. y. z}]) thunk."
	
	bufRect := bounds.
	"myHandle ifNotNil: [glExt := OGLExtManager new ogl: self]."
	^myHandle ifNotNil: [self]

]

{ #category : #initialize }
OpenGL >> initializeIn: bounds [
	^self initializeIn: bounds flags: self class defaultFlags
]

{ #category : #initialize }
OpenGL >> initializeIn: bounds flags: flags [
	"flag is a bitwise OR of
	1	B3DSoftwareRenderer
	2	B3DHardwareRenderer
	4	B3DStencilBuffer
	8	B3DAntialiasing
	16	B3DStereo
	32	B3DSyncvbl"
	usesGLFW := false.
	myHandle := self primCreateRenderer: flags x: bounds left y: bounds top w: bounds width h: bounds height.
	bufRect := bounds.
	myHandle ifNotNil: [glExt := OGLExtManager new ogl: self].
	^myHandle ifNotNil: [self]
]

{ #category : #deprecated }
OpenGL >> installTexture: aTForm [
	| tf |
	changeTexture ifFalse:[^false].
	"find the real texture if necessary"
	aTForm isThumb 
		ifTrue:[tf := formManager resolve: aTForm distance: distance]
		ifFalse:[tf := aTForm].
	textureManager bindTexture: tf.
	textureManager uploadTexture: tf.
	^ true.
]

{ #category : #accessing }
OpenGL >> isMirror [

	^ isMirror.
]

{ #category : #testing }
OpenGL >> isOpen [
	^myHandle notNil
]

{ #category : #accessing }
OpenGL >> leavePortal2D [

	"note that we've finished rendering through a 2D portal."
	portalDepth := ((portalDepth - 1) max: 0).
]

{ #category : #extensions }
OpenGL >> loadExtension: extName [
	^glExt loadExtension: extName.
]

{ #category : #initialize }
OpenGL >> makeCurrent [
	"Hack! We can't make it explicitly but getting a property requires to have me current, so..."
	self primRender: myHandle getProperty: 1.
]

{ #category : #accessing }
OpenGL >> makeCurrentDuring: aBlock [
	| oldContext |
	oldContext := GLFW getCurrentContext.
	[ GLFW makeContextCurrent: self glfwWindow.
	  GL value: self during: aBlock ] ensure: [ GLFW makeContextCurrent: oldContext ]
]

{ #category : #testing }
OpenGL >> maxIndices [

	|mxInd|

	mxInd := IntegerArray ofSize: 1.
	self glGetIntegerv: GLMaxElementsIndices with: mxInd.
	^ mxInd at: 1.
]

{ #category : #accessing }
OpenGL >> maxPortalDepth [

	^ maxPortalDepth.
]

{ #category : #accessing }
OpenGL >> maxPortalDepth: mpd [

	maxPortalDepth := mpd.
]

{ #category : #testing }
OpenGL >> maxVertices [

	|mxVrt|

	mxVrt := IntegerArray ofSize: 1.
	self glGetIntegerv: GLMaxElementsVertices with: mxVrt.
	^ mxVrt at: 1.
]

{ #category : #accessing }
OpenGL >> mirrorFlip [

	isMirror := isMirror not.
]

{ #category : #accessing }
OpenGL >> modelviewMatrix [
	| matrix |
	matrix := Matrix4x4 new.
	self glGetFloatv: GLModelviewMatrix with: matrix.
	^matrix transposed
]

{ #category : #accessing }
OpenGL >> myHandle [
	^ myHandle
]

{ #category : #accessing }
OpenGL >> noSwap [

	noSwap := true.
]

{ #category : #accessing }
OpenGL >> numPrims [
	^numPrims
]

{ #category : #accessing }
OpenGL >> numVtx [
	^numVtx
]

{ #category : #accessing }
OpenGL >> origin [
	^bufRect origin
]

{ #category : #accessing }
OpenGL >> peekMatrix [

	| matrix |
	matrix := Matrix4x4 new.
	self glGetFloatv: GLModelviewMatrix with: matrix.
	^ matrix.
]

{ #category : #accessing }
OpenGL >> platform [
	^ platform 
]

{ #category : #accessing }
OpenGL >> popFog [

	fogOn ifTrue:[self glEnable: GLFog]..
]

{ #category : #accessing }
OpenGL >> popMatrix [

	| matrix |
	matrix :=  matrixStack removeLast.
	self glLoadMatrixf: matrix.
]

{ #category : #private }
OpenGL >> primCount: indexCount forMode: mode [

	mode == GLTriangles ifTrue: [^ indexCount // 3].
	mode == GLQuads ifTrue: [^ indexCount // 4].
	mode == GLPoints ifTrue: [^ indexCount].
	mode == GLTriangleStrip ifTrue: [^ indexCount - 2].
	mode == GLTriangleFan ifTrue: [^ indexCount - 2].
	mode == GLLineStrip ifTrue: [^ indexCount - 1].
	mode == GLLines ifTrue: [^indexCount // 2].
	mode == GLPolygon ifTrue:[^1].
	mode == GLLineLoop ifTrue:[^1].

	"It's easy to add additional modes if necessary."
	self error: 'Unexpected mode'.
	^ 0
]

{ #category : #primitives }
OpenGL >> primCreateRenderer: flags x: x y: y w: w h: h [
	<primitive: 'primitiveCreateRendererFlags' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
OpenGL >> primDestroyRenderer: aHandle [
	<primitive: 'primitiveDestroyRenderer' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
OpenGL >> primRender: aHandle getProperty: propNumber [
	"Primitive. Get some property."
	<primitive:'primitiveGetIntProperty' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
OpenGL >> primRender: aHandle setBufferRectX: left y: top w: width h: height [
	<primitive:'primitiveSetBufferRect' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
OpenGL >> primRender: aHandle setProperty: propNumber toInteger: value [
	"Primitive. Set some property."
	<primitive:'primitiveSetIntProperty' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #primitives }
OpenGL >> primSwapBuffers: aHandle [
	"Primitive. Finish all rendering operations on the receiver.
	Do not return before all rendering operations have taken effect."
	<primitive: 'primitiveSwapRendererBuffers' module:'B3DAcceleratorPlugin'>
	^nil
]

{ #category : #private }
OpenGL >> privateInstallLibrary: glLibraryName [
	"Do a bit of reflective hacking so that we don't have to carry around lots and lots of duplicate methods for the OpenGL API on each platform. The only 'real' difference is the name of the appropriate shared library here. Indeed, we could (nay... we SHOULD) have done this through a subclass of ExternalLibrary which handles this for us but since we haven't, get out the reflective hammer and nail down the problem."
	| lit |
	InstalledOpenGLLibrary = glLibraryName ifTrue:[^self].
	OpenGL methodsDo:[:meth|
		lit := meth numLiterals > 0 ifTrue:[meth literalAt: 1].
		lit class == ExternalLibraryFunction ifTrue:[lit setModule: glLibraryName].
	].
	InstalledOpenGLLibrary := glLibraryName.
]

{ #category : #accessing }
OpenGL >> projectionMatrix [
	| matrix |
	matrix := Matrix4x4 new.
	self glGetFloatv: GLProjectionMatrix with: matrix.
	^matrix transposed
]

{ #category : #accessing }
OpenGL >> pushFog [

	self glDisable: GLFog.
]

{ #category : #accessing }
OpenGL >> pushMatrix [

	| matrix |
	matrix := Matrix4x4 new.
	self glGetFloatv: GLModelviewMatrix with: matrix.
	matrixStack add: matrix.

]

{ #category : #'Keyword API' }
OpenGL >> realglBegin: mode [
	"This method was automatically generated."
	"void glBegin(GLenum mode);"
	<apicall: void 'glBegin' (ulong) module: '#openGLLibraryName'>
	^self externalCallFailed
]

{ #category : #'Keyword API' }
OpenGL >> realglEnd [
	"This method was automatically generated."
	"void glEnd();"
	<apicall: void 'glEnd' (void) module: '#openGLLibraryName'>
	^self externalCallFailed
]

{ #category : #deprecated }
OpenGL >> releaseTexture: aTForm [

	textureManager releaseTexture: aTForm.

]

{ #category : #extensions }
OpenGL >> reportedExtensions [
	"answer a set of extension strings for this renderer"

	| rawExtensions |
	rawExtensions := (self glGetString: GLExtensions) fromCString.
	rawExtensions := rawExtensions findTokens: ' '.
	rawExtensions := rawExtensions collect:[:str| str asSymbol].
	^IdentitySet withAll: rawExtensions.
	
]

{ #category : #debugging }
OpenGL >> reportedRenderer [
	^(self glGetString: GLRenderer) fromCString
]

{ #category : #shaders }
OpenGL >> reportedShadingLanguageVersion [

	^[ (self glGetString: GLShadingLanguageVersion) fromCString ]
		on: Error 
		do: [ :ex | '0.0 Error thrown OpenGl version may be too old.' ]
]

{ #category : #debugging }
OpenGL >> reportedVendor [
	^(self glGetString: GLVendor) fromCString
]

{ #category : #accessing }
OpenGL >> reportedVersion [
	
	^ (self glGetString: GLVersion) fromCString "eg: '1.5 ATI-1.3.42' " 
]

{ #category : #accessing }
OpenGL >> screenShot [
	"Make a screen shot with the given extent"
	^self screenShot: (0@0 extent: bufRect extent)
]

{ #category : #accessing }
OpenGL >> screenShot: aRectangle [
	"Make a screen shot with the given extent"
	| form |
	form := Form extent: aRectangle extent depth: 32.
	self glReadPixels: aRectangle left with: bufRect height - aRectangle bottom with: aRectangle width with: aRectangle height with: platform imagePixelFormat32 with: platform imagePixelType32 with: form bits.
	form flipVertically.
	^form
]

{ #category : #rendering }
OpenGL >> setCull [

	self glEnable: GLCullFace.
	self glFrontFace: self frontFace.
]

{ #category : #deprecated }
OpenGL >> setTextureSizeOf: aTForm to: aPoint [
	^textureManager setTextureSizeOf: aTForm to: aPoint
	
]

{ #category : #accessing }
OpenGL >> shaderManager [
	^shaderManager
]

{ #category : #shaders }
OpenGL >> shadingLanguageVersion [
	" '1.2 Mesa Shaders 2.0' asNumber    "

	^ (self reportedShadingLanguageVersion) "eg: '1.5 ATI-1.3.42' " asNumber
]

{ #category : #accessing }
OpenGL >> shouldClose [

	^ usesGLFW ifTrue: [(GLFW windowShouldClose: myHandle) ~= 0] ifFalse: [false]
]

{ #category : #accessing }
OpenGL >> suppressPortals [
	"Has rendering been suppressed for the far side of portals?"
	^ suppressPortals
]

{ #category : #accessing }
OpenGL >> suppressPortals: bool [
	"Supress rendering the far side of portals.  
	(Useful when using render to identify pointer targets for manipulation.)"
	suppressPortals := bool.
]

{ #category : #initialize }
OpenGL >> swapBuffers [
	"Swap the receiver's buffers. Return true if successful, false otherwise"
	usesGLFW ifTrue: [^ GLFW swapBuffers: self glfwWindow].
	
	noSwap ifTrue:[noSwap := false. ^ self.].
	^(self primSwapBuffers: myHandle) notNil
]

{ #category : #accessing }
OpenGL >> test [
	
	^ test.
]

{ #category : #private }
OpenGL >> test2D [

| s |

true ifTrue:[
	s := 10.
	self glMatrixMode: GLModelview.
	self glLoadIdentity.
	self glDisable: GLDepthTest.
	self glTranslated: 0 with: 0 with: -1.0.
	self glEnable: GLBlend.
	self glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha.
	self glColor4f: 0 with: 0 with: 0 with: 1.
	self
		glBegin: GLQuads;
			glVertex2f: 0.0 with: 0.0;
			glVertex2f: 0.0 with: s;
			glVertex2f: s with: s;
			glVertex2f: s with: 0.0;
		glEnd.
	self 
		glEnable: GLBlend;
		glBlendFunc: GLSrcAlpha with: GLOneMinusSrcAlpha;
		glColor4f: 0.0 with: 0.0 with: 0.0 with: 0.5;
		glLineWidth: 1;
		glBegin: GLLineLoop;
			glVertex2f: 0 with: s;
			glVertex2f: 0 with: 0;
			glVertex2f: s with: s;
			glVertex2f:s with: 0;
		glEnd;
		glColor4f: 1.0 with: 1.0 with: 1.0 with: 0.5;
		glBegin: GLQuads;
			glVertex2f: 0 + 0.1 with: s - 0.1;
			glVertex2f: 0 + 0.1 with: 0 + 0.1;
			glVertex2f: s - 0.1 with: 0 + 0.1;
			glVertex2f: s - 0.1 with: s - 0.1;
		glEnd;
		glDisable: GLBlend.
].

]

{ #category : #accessing }
OpenGL >> test: bool [
	
	test := bool.
]

{ #category : #deprecated }
OpenGL >> textureInternalFormatCompressed [
	^GLCompressedRgbaARB
]

{ #category : #accessing }
OpenGL >> textureManager [
	^textureManager
]

{ #category : #accessing }
OpenGL >> texturePixelFormat [
	^ platform texturePixelFormat
]

{ #category : #accessing }
OpenGL >> texturePixelType [
	^ platform texturePixelType
]

{ #category : #accessing }
OpenGL >> timeStamp [

	^ timeStamp.
]

{ #category : #accessing }
OpenGL >> timeStamp: ts [

	timeStamp := ts.
]

{ #category : #accessing }
OpenGL >> transparency [

	forceHilite ifNotNil: [
		^ forceHilite alpha * transparency.
	].

	^ transparency.
]

{ #category : #accessing }
OpenGL >> transparency: trans [

	transparency := trans.
]

{ #category : #rendering }
OpenGL >> updateTextures: updateList [

	textureManager updateTextures:updateList.
]

{ #category : #accessing }
OpenGL >> version [
	
	^ (self reportedVersion) "eg: '1.5 ATI-1.3.42' " asNumber
]
