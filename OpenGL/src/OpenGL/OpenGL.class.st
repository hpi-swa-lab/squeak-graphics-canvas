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
		'context',
		'profile'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-API'
}

{ #category : #accessing }
OpenGL class >> api [

	self subclassResponsibility
]

{ #category : #'instance creation' }
OpenGL class >> context: aContext [

	^ self context: aContext profile: self defaultProfile
]

{ #category : #'instance creation' }
OpenGL class >> context: aContext profile: aSymbol [

	^ self new
		context: aContext;
		profile: aSymbol;
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
	| context |
	context := B3DContext newIn: (0@0 extent: 400@400).
	[
		(GL2_0 context: context) makeCurrentDuring: [
			GL disable: GL_DEPTH_TEST.
			GL clearColor: 1.0 with: 1.0 with: 1.0 with: 1.0.
			[Sensor anyButtonPressed] whileFalse: [
				GL newFrameDo: [
					GL clear: GL_COLOR_BUFFER_BIT.

					GL rotatef: 5.0 with: 0.0 with: 0.0 with: 1.0.
					GL color3f: 1.0 with: 0.0 with: 0.0.

					GL begin: GL_POLYGON.
						GL vertex2f: -0.7 with: -0.7.
						GL vertex2f:  0.7 with: -0.7.
						GL vertex2f:  0.7 with:  0.7.
						GL vertex2f: -0.7 with:  0.7.
					GL end]]]
	] ensure: [context destroy]
]

{ #category : #'class initialization' }
OpenGL class >> initialize [

	Smalltalk addToStartUpList: self.
	Environment current at: #GL put: nil
]

{ #category : #accessing }
OpenGL class >> majorVersion [

	self subclassResponsibility
]

{ #category : #accessing }
OpenGL class >> minorVersion [

	self subclassResponsibility
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

{ #category : #accessing }
OpenGL class >> versionNumber [

	self subclassResponsibility
]

{ #category : #accessing }
OpenGL >> api [

	^ self class api
]

{ #category : #'error handling' }
OpenGL >> assertIsCurrent [
	
	self assert: GL == self
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

{ #category : #'error handling' }
OpenGL >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self getError.
	(error ~= 0) ifTrue: [self error: (self errorString: error) ]

]

{ #category : #accessing }
OpenGL >> context [

	^ context
]

{ #category : #accessing }
OpenGL >> context: aContext [

	context := aContext
]

{ #category : #'context delegation' }
OpenGL >> destroy [

	context destroy
]

{ #category : #'context delegation' }
OpenGL >> endFrame [

	context endFrame
]

{ #category : #'error handling' }
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

{ #category : #parameters }
OpenGL >> extensionList [

	self flag: #todo. "If generated classes remained the same, compatibility could be ensured by selection of the correct library class. Also, querying the major version does not work in GLES2"
	^ self class majorVersion >= 3
		ifTrue: [	
			| extensions |
			extensions := Array new: self numExtensions.
			0 to: extensions size - 1 do: [:i |
				extensions at: i put: (self getStringParameter: GL_EXTENSIONS at: i)]]
		ifFalse: [(self getStringParameter: GL_EXTENSIONS) splitBy: ' ']
]

{ #category : #parameters }
OpenGL >> getClearColor [

	| color |
	color := Float32Array new: 4.
	self getFloatv: GL_COLOR_CLEAR_VALUE with: color.
	^ Color
		r: color first
		g: color second
		b: color third
		alpha: color fourth
]

{ #category : #'parameters - helpers' }
OpenGL >> getIntegerParameter: name [

	IntegerArray new: 1 during: [:result |
		self getIntegerv: name with: result.
		^ result first]
]

{ #category : #'parameters - helpers' }
OpenGL >> getIntegerParameters: name size: numParameters [

	| data |
	data := IntegerArray new: numParameters.
	self getIntegerv: name with: data.
	^ data
]

{ #category : #resources }
OpenGL >> getShaderProgram: aClass [

	^ context resources getShaderProgram: aClass library: self
]

{ #category : #'parameters - helpers' }
OpenGL >> getStringParameter: name [

	| data |
	data := self getString: name.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #'parameters - helpers' }
OpenGL >> getStringParameter: name at: index [

	| data |
	data := self getStringi: name with: index.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #parameters }
OpenGL >> getVersion [

	| versionString |
	versionString := self versionString. "always begins with major.minor"
	^ { versionString first asInteger . versionString third asInteger }
]

{ #category : #parameters }
OpenGL >> getViewport [

	| viewport |
	viewport := self getIntegerParameters: GL_VIEWPORT size: 4.
	^ Rectangle
		origin: viewport first @ viewport second
		extent: viewport third @ viewport fourth
]

{ #category : #testing }
OpenGL >> isCompatibilityProfile [

	^ (self getIntegerParameter: GL_CONTEXT_PROFILE_MASK)
		bitAnd: GL_CONTEXT_COMPATIBILITY_PROFILE_BIT
]

{ #category : #testing }
OpenGL >> isCoreProfile [

	^ (self getIntegerParameter: GL_CONTEXT_PROFILE_MASK)
		bitAnd: GL_CONTEXT_CORE_PROFILE_BIT
]

{ #category : #accessing }
OpenGL >> majorVersion [

	^ self class majorVersion
]

{ #category : #activation }
OpenGL >> makeCurrentDuring: aBlock [

	GL
		ifNotNil: [:previousLib |
			| previousContext |
			self == previousLib ifTrue: [^ aBlock value].
			(previousContext := previousLib context) == context
				ifTrue: [[GL := self. aBlock value] ensure: [GL := previousLib]]
				ifFalse: [
					[previousContext deactivate.
					context activate.
					GL := self.
					aBlock value] ensure: [
						context deactivate.
						previousContext activate.
						GL := previousLib]]]
		ifNil: [
			[context activate.
			GL := self.
			aBlock value] ensure: [
				GL := nil.
				context deactivate]]
]

{ #category : #accessing }
OpenGL >> minorVersion [

	^ self class minorVersion
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

{ #category : #parameters }
OpenGL >> numExtensions [

	^ self getIntegerParameter: GL_NUM_EXTENSIONS
]

{ #category : #accessing }
OpenGL >> profile [

	^ profile
]

{ #category : #accessing }
OpenGL >> profile: anObject [

	profile := anObject
]

{ #category : #'error handling' }
OpenGL >> profileError [

	self error: 'Not supported in currently active OpenGL library profile'
]

{ #category : #resources }
OpenGL >> registerObject: glObject [

	context registerObject: glObject
]

{ #category : #parameters }
OpenGL >> rendererString [

	^ self getStringParameter: GL_RENDERER
]

{ #category : #helpers }
OpenGL >> setClearColor: aColor [

	self
		clearColor: aColor red
		with: aColor green
		with: aColor blue
		with: aColor alpha
]

{ #category : #helpers }
OpenGL >> setViewport: aRectangle [

	self
		viewport: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
]

{ #category : #parameters }
OpenGL >> shadingLanguageVersionString [

	^ self getStringParameter: GL_SHADING_LANGUAGE_VERSION
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

{ #category : #parameters }
OpenGL >> vendorString [

	^ self getStringParameter: GL_VENDOR
]

{ #category : #accessing }
OpenGL >> version [

	^ self class versionNumber
]

{ #category : #'error handling' }
OpenGL >> versionError [

	self error: 'Not supported in currently active OpenGL library version'
]

{ #category : #parameters }
OpenGL >> versionString [

	^ self getStringParameter: GL_VERSION
]

{ #category : #helpers }
OpenGL >> viewport: aRectangle during: aBlock [

	| previousViewport |
	previousViewport := self getViewport.
	self setViewport: aRectangle.
	aBlock value.
	self setViewport: previousViewport
]
