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
	#category : #'OpenGL-Core'
}

{ #category : #'instance creation' }
OpenGL class >> context: aContext [

	^ self new
		context: aContext;
		yourself
]

{ #category : #examples }
OpenGL class >> example1 [ "self example1"
	"A minimal OpenGL example."
	| lib bounds |
	bounds := 0@0 extent: 400@400.
	lib := GL2_0 context: (B3DContext newIn: bounds).
	[
		Transcript
			cr; nextPutAll: lib versionString;
			cr; nextPutAll: lib vendorString;
			cr; nextPutAll: lib rendererString;
			cr; nextPutAll: lib shadingLanguageVersionString;
			cr.
		lib extensionList do: [:ext |
			Transcript nextPutAll: ext; space].
		Transcript flush
	] ensure: [lib destroy]
]

{ #category : #examples }
OpenGL class >> example2 [ "self example2"
	"A very simple OpenGL 2.0 example showing a rotating red rectangle on white background.
	Click anywhere to dismiss it."
	| lib bounds |
	bounds := 0@0 extent: 400@400.
	[
		lib := GL2_0 context: (B3DContext newIn: bounds).
		lib glDisable: GL_DEPTH_TEST.
		lib glClearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
		[Sensor anyButtonPressed] whileFalse: [
			lib newFrameDo: [
				lib glClear: GL_COLOR_BUFFER_BIT.

				lib glRotatef: 5.0 with: 0.0 with: 0.0 with: 1.0.
				lib glColor3f: 1.0 with: 0.0 with: 0.0.

				lib glBegin: GL_POLYGON.
					lib glVertex2f: -0.7 with: -0.7.
					lib glVertex2f:  0.7 with: -0.7.
					lib glVertex2f:  0.7 with:  0.7.
					lib glVertex2f: -0.7 with:  0.7.
				lib glEnd]]
	] ensure: [lib ifNotNil: [lib destroy]]
]

{ #category : #examples }
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

	Smalltalk addToStartUpList: self.
	Environment current at: #GL put: nil
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
OpenGL class >> startUp: resuming [

	resuming ifTrue: [
		| instances replacements |
		"Make sure everybody interacting with an OpenGL library will notice a no longer valid instance."
		instances := Array streamContents: [:stream |
						self allSubInstancesDo: [:each |
							stream nextPut: each]].
		replacements := Array new: instances size withAll: #SuspendedOpenGL.
		instances elementsForwardIdentityTo: replacements]
]

{ #category : #debugging }
OpenGL >> assertIsCurrent [
	
	self assert: (GL value == self)
]

{ #category : #resources }
OpenGL >> at: aKey [

	^ context resources userData at: aKey
]

{ #category : #resources }
OpenGL >> at: aKey ifAbsentPut: aBlock [

	^ context resources userData at: aKey ifAbsentPut: aBlock
]

{ #category : #resources }
OpenGL >> at: aKey put: aValue [

	^ context resources userData
			at: aKey
			put: aValue
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
	self glGetFloatv: GL_COLOR_CLEAR_VALUE with: color.
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
OpenGL >> context: aContext [

	context := aContext
]

{ #category : #resources }
OpenGL >> createObject: aClass [

	^ context resources createObject: aClass context: self
]

{ #category : #'context delegation' }
OpenGL >> destroy [

	context destroy
]

{ #category : #'context delegation' }
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

{ #category : #helpers }
OpenGL >> extensionList [

	self flag: #todo. "If generated classes remained the same, compatibility could be ensured by selection of the correct library class. Also, querying the major version does not work in GLES2"
	^ self class majorVersion >= 3
		ifTrue: [	
			| extensions |
			extensions := Array new: self numExtensions.
			0 to: extensions size - 1 do: [:i |
				extensions at: i put: (self getString: GL_EXTENSIONS index: i)]]
		ifFalse: [(self getString: GL_EXTENSIONS) splitBy: ' ']
]

{ #category : #helpers }
OpenGL >> getInteger: name [

	| data |
	data := IntegerArray new: 1.
	self glGetIntegerv: name with: data.
	^ data first
]

{ #category : #helpers }
OpenGL >> getIntegers: name size: numIntegers [

	| data |
	data := IntegerArray new: numIntegers.
	self glGetIntegerv: name with: data.
	^ data
]

{ #category : #resources }
OpenGL >> getShaderProgram: aClass [

	^ context resources getShaderProgram: aClass library: self
]

{ #category : #helpers }
OpenGL >> getString: name [

	| data |
	data := self glGetString: name.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #helpers }
OpenGL >> getString: name index: aninteger [

	| data |
	data := self glGetStringi: name with: aninteger.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #helpers }
OpenGL >> isCompatibilityProfile [

	^ (self getInteger: GL_CONTEXT_PROFILE_MASK)
		bitAnd: GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{ #category : #helpers }
OpenGL >> isCoreProfile [

	^ (self getInteger: GL_CONTEXT_PROFILE_MASK)
		bitAnd: GL_CONTEXT_CORE_PROFILE_BIT
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
				^ GL value: self during: aBlock].
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
		self flag: #todo. "can we get rid of endFrame?"
		self checkForError.
		self swapBuffers]
]

{ #category : #helpers }
OpenGL >> numExtensions [

	^ self getInteger: GL_NUM_EXTENSIONS
]

{ #category : #helpers }
OpenGL >> rendererString [

	^ self getString: GL_RENDERER
]

{ #category : #helpers }
OpenGL >> shadingLanguageVersionString [

	^ self getString: GL_SHADING_LANGUAGE_VERSION
]

{ #category : #'context delegation' }
OpenGL >> shouldClose [

	self flag: #todo. "does this really belong here?"
	^ context shouldClose
]

{ #category : #'context delegation' }
OpenGL >> swapBuffers [

	context swapBuffers
]

{ #category : #helpers }
OpenGL >> vendorString [

	^ self getString: GL_VENDOR
]

{ #category : #helpers }
OpenGL >> version [

	| versionString |
	versionString := self versionString. "always begins with major.minor"
	^ { versionString first asInteger . versionString third asInteger }
]

{ #category : #helpers }
OpenGL >> versionString [

	^ self getString: GL_VERSION
]

{ #category : #helpers }
OpenGL >> viewport [

	| viewport |
	viewport := self getIntegers: GL_VIEWPORT size: 4.
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
