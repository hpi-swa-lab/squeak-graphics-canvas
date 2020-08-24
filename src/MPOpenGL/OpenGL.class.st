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
		'context'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #'instance creation' }
OpenGL class >> context: aContext [
	^ self new context: aContext
]

{ #category : #example }
OpenGL class >> example [	"OpenGL example"
	"A very simple OpenGL example"

	| ogl bounds |
	bounds := 0@0 extent: 400@400.
	ogl := GL2_0 newGLFWIn: bounds.
	ogl ifNil:[^self error: 'Unable to create renderer'].
	[[Sensor anyButtonPressed or: [ogl shouldClose]] whileFalse: [ ogl newFrameDo: [
	"--- this is the actual scene content ---"

		ogl glDisable: GL_DEPTH_TEST.

		ogl glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		ogl glClear: GL_COLOR_BUFFER_BIT.

		ogl glRotatef: 5.0 with: 0.0 with: 0.0 with: 1.0.
		ogl glColor3f: 1.0 with: 0.0 with: 0.0.

		ogl glBegin: GL_POLYGON.
			ogl glVertex2f: -0.7 with: -0.7.
			ogl glVertex2f:  0.7 with: -0.7.
			ogl glVertex2f:  0.7 with:  0.7.
			ogl glVertex2f: -0.7 with:  0.7.
		ogl glEnd.

	"--- end the end frame operations"
	]].
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

{ #category : #'class initialization' }
OpenGL class >> initialize [
	"OpenGL initialize"
	Smalltalk addToShutDownList: self.

]

{ #category : #accessing }
OpenGL class >> moduleName [

	Smalltalk platformName = 'Win32' ifTrue: [
		^ 'opengl32.dll'].
	Smalltalk platformName = 'Mac OS' ifTrue:[
		^ Smalltalk osVersion asNumber < 1000 
			ifTrue: [self notYetImplemented]
			ifFalse:['OpenGL.framework']].
	Smalltalk platformName = 'unix' ifTrue: [
		"default to X11 window system"
		^ Smalltalk osVersion = 'linux-gnu'
			ifTrue: ['libGL.so']
			ifFalse: ['GL']].
	self error: 'Cannot identify platform'
]

{ #category : #'class initialization' }
OpenGL class >> shutDown [ 
	self allSubInstancesDo: [:each | each becomeForward: #SuspendedOpenGL].

]

{ #category : #debugging }
OpenGL >> assertIsCurrent [
	
	self assert: (GL value == self)
]

{ #category : #accessing }
OpenGL >> at: aKey [
	^ context resources userData at: aKey
]

{ #category : #accessing }
OpenGL >> at: aKey ifAbsentPut: aBlock [
	^ context resources userData at: aKey ifAbsentPut: aBlock
]

{ #category : #accessing }
OpenGL >> at: aKey put: aValue [
	^ context resources userData at: aKey put: aValue
]

{ #category : #debugging }
OpenGL >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self glGetError.
	(error ~= 0) ifTrue: [self error: (self errorString: error) ]

]

{ #category : #helpers }
OpenGL >> clearColor [

	| color |
	color := Float32Array new: 4.
	self glGetIntegerv: GL_COLOR_CLEAR_VALUE with: color.
	^ Color
		r: color first
		g: color second
		b: color third
		alpha: color fourth
]

{ #category : #helpers }
OpenGL >> clearColor: aColor [

	self
		glClearColor: aColor red
		with: aColor green
		with: aColor blue
		with: aColor alpha
]

{ #category : #accessing }
OpenGL >> context [
	^ context
]

{ #category : #accessing }
OpenGL >> context: anObject [
	context := anObject
]

{ #category : #resources }
OpenGL >> createObject: aClass [

	^ context resources createObject: aClass context: self
]

{ #category : #'initialize-release' }
OpenGL >> endFrame [
	context endFrame
]

{ #category : #debugging }
OpenGL >> errorString: error [
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

{ #category : #resources }
OpenGL >> getShaderProgram: aClass [

	^ context resources getShaderProgram: aClass library: self
]

{ #category : #activation }
OpenGL >> makeCurrentDuring: aBlock [

	GL value
		ifNotNil: [ :lib |
			| oldContext |
			self == lib ifTrue: [
				^ aBlock value].
			oldContext := lib context.
			oldContext == context ifTrue: [
				^ aBlock value: self during: aBlock].
			oldContext deactivate.
			context activate.
			[GL value: self during: aBlock] ensure: [
				context deactivate.
				oldContext activate]]
		ifNil: [
			context activate.
			GL value: self during: aBlock.
			context deactivate ]
]

{ #category : #activation }
OpenGL >> newFrameDo: aBlock. [
	self makeCurrentDuring: [
		self checkForError.
		aBlock value.
		self endFrame.
		self flag: #todo. "endFrame may not be the best name since it does poll events"
		self checkForError.
		self swapBuffers ]
]

{ #category : #accessing }
OpenGL >> shouldClose [
	self flag: #todo. "is this really a good name"
	^ context shouldClose
]

{ #category : #'initialize-release' }
OpenGL >> swapBuffers [
	context swapBuffers
]

{ #category : #helpers }
OpenGL >> viewport [

	| viewport |
	viewport := IntegerArray new: 4.
	self glGetIntegerv: GL_VIEWPORT with: viewport.
	^ Rectangle
		origin: viewport first @ viewport second
		extent: viewport third @ viewport fourth
]

{ #category : #helpers }
OpenGL >> viewport: aRectangle [

	self
		glViewport: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
]

{ #category : #helpers }
OpenGL >> viewport: aRectangle during: aBlock [

	| previousViewport |
	previousViewport := self viewport.
	self viewport: aRectangle.
	aBlock value.
	self viewport: previousViewport
]
