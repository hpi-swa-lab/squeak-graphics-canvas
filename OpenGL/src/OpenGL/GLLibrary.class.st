"
This is the main interface to the OpenGL library. 

displayList
displayListAlpha

David A. Smith
"
Class {
	#name : #GLLibrary,
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
GLLibrary class >> api [

	self subclassResponsibility
]

{ #category : #querying }
GLLibrary class >> api: aSymbol [

	^ GLLibrary subclasses detect: [:cls | cls api = aSymbol]
]

{ #category : #'instance creation' }
GLLibrary class >> context: aContext [

	^ self context: aContext profile: self defaultProfile
]

{ #category : #'instance creation' }
GLLibrary class >> context: aContext profile: aSymbol [

	^ self new
		context: aContext;
		profile: aSymbol;
		yourself
]

{ #category : #examples }
GLLibrary class >> example1 [ "self example1"
	"A minimal OpenGL example."
	| lib bounds |
	bounds := 0@0 extent: 400@400.
	lib := (B3DContext bounds: bounds) library.
	[
		Transcript
			cr; nextPutAll: lib getVersionString;
			cr; nextPutAll: lib getVendorString;
			cr; nextPutAll: lib getRendererString;
			cr; nextPutAll: lib getShadingLanguageVersionString;
			cr.
		lib getExtensions do: [:ext |
			Transcript nextPutAll: ext; cr].
		Transcript flush
	] ensure: [lib destroy]
]

{ #category : #examples }
GLLibrary class >> example2 [ "self example2"
	"A very simple OpenGL 1.0 example showing a rotating red rectangle on white background.
	Click anywhere to dismiss it."
	| context |
	context := B3DContext bounds: (0@0 extent: 400@400).
	[
		(GL1_0 context: context) makeCurrentDuring: [
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
GLLibrary class >> initialize [

	Smalltalk addToStartUpList: self.
	Environment current at: #GL put: nil
]

{ #category : #accessing }
GLLibrary class >> majorVersion [

	self subclassResponsibility
]

{ #category : #querying }
GLLibrary class >> majorVersion: major minorVersion: minor [

	^ self withAllSubclasses detect: [:cls |
		cls majorVersion = major and: [cls minorVersion = minor]]
]

{ #category : #accessing }
GLLibrary class >> minorVersion [

	self subclassResponsibility
]

{ #category : #'class initialization' }
GLLibrary class >> startUp: resuming [

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
GLLibrary class >> versionNumber [

	self subclassResponsibility
]

{ #category : #accessing }
GLLibrary >> api [

	^ self class api
]

{ #category : #'error handling' }
GLLibrary >> assertIsCurrent [
	
	self assert: GL == self
]

{ #category : #resources }
GLLibrary >> at: aKey [

	^ context resources userData at: aKey
]

{ #category : #resources }
GLLibrary >> at: aKey ifAbsentPut: aBlock [

	^ context resources userData at: aKey ifAbsentPut: aBlock
]

{ #category : #resources }
GLLibrary >> at: aKey put: aValue [

	^ context resources userData
			at: aKey
			put: aValue
]

{ #category : #'error handling' }
GLLibrary >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self getError.
	(error ~= 0) ifTrue: [self error: (self errorString: error) ]

]

{ #category : #accessing }
GLLibrary >> context [

	^ context
]

{ #category : #accessing }
GLLibrary >> context: aContext [

	context := aContext
]

{ #category : #'context delegation' }
GLLibrary >> destroy [

	context destroy
]

{ #category : #'context delegation' }
GLLibrary >> endFrame [

	context endFrame
]

{ #category : #'error handling' }
GLLibrary >> errorString: error [
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
GLLibrary >> extensionList [

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
GLLibrary >> getClearColor [

	| color |
	color := Float32Array new: 4.
	self getFloatv: GL_COLOR_CLEAR_VALUE with: color.
	^ Color
		r: color first
		g: color second
		b: color third
		alpha: color fourth
]

{ #category : #parameters }
GLLibrary >> getExtensions [

	| extensionsString |
	extensionsString := self getExtensionsString.
	^ extensionsString splitBy: ' '
]

{ #category : #parameters }
GLLibrary >> getExtensionsString [

	^ self getStringParameter: GL_EXTENSIONS
]

{ #category : #'parameters - helpers' }
GLLibrary >> getIntegerParameter: name [

	IntegerArray new: 1 during: [:result |
		self getIntegerv: name with: result.
		^ result first]
]

{ #category : #'parameters - helpers' }
GLLibrary >> getIntegerParameters: name size: numParameters [

	| data |
	data := IntegerArray new: numParameters.
	self getIntegerv: name with: data.
	^ data
]

{ #category : #parameters }
GLLibrary >> getNumExtensions [

	^ self getIntegerParameter: GL_NUM_EXTENSIONS
]

{ #category : #parameters }
GLLibrary >> getProfile [

	^ #'' "by default none"
]

{ #category : #parameters }
GLLibrary >> getRendererString [

	^ self getStringParameter: GL_RENDERER
]

{ #category : #resources }
GLLibrary >> getShaderProgram: aClass [

	^ context resources getShaderProgram: aClass library: self
]

{ #category : #parameters }
GLLibrary >> getShadingLanguageVersion [

	^ #(0 0) "by default unsupported"
]

{ #category : #parameters }
GLLibrary >> getShadingLanguageVersionString [

	^ self getStringParameter: GL_SHADING_LANGUAGE_VERSION
]

{ #category : #'parameters - helpers' }
GLLibrary >> getStringParameter: name [

	| data |
	data := self getString: name.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #'parameters - helpers' }
GLLibrary >> getStringParameter: name at: index [

	| data |
	data := self getStringi: name with: index.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{ #category : #parameters }
GLLibrary >> getVendorString [

	^ self getStringParameter: GL_VENDOR
]

{ #category : #parameters }
GLLibrary >> getVersion [
	"Returns an array of two elements, the major version and the minor version."
	self subclassResponsibility
]

{ #category : #parameters }
GLLibrary >> getVersionNumber [

	| version |
	version := self getVersion.
	^ version first * 10 + version second
]

{ #category : #parameters }
GLLibrary >> getVersionString [

	^ self getStringParameter: GL_VERSION
]

{ #category : #parameters }
GLLibrary >> getViewport [

	| viewport |
	viewport := self getIntegerParameters: GL_VIEWPORT size: 4.
	^ Rectangle
		origin: viewport first @ viewport second
		extent: viewport third @ viewport fourth
]

{ #category : #testing }
GLLibrary >> isCompatibilityProfile [

	^ profile = #compatibility
]

{ #category : #testing }
GLLibrary >> isCoreProfile [

	^ profile = #core
]

{ #category : #accessing }
GLLibrary >> majorVersion [

	^ self class majorVersion
]

{ #category : #activation }
GLLibrary >> makeCurrentDuring: aBlock [

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
GLLibrary >> minorVersion [

	^ self class minorVersion
]

{ #category : #activation }
GLLibrary >> newFrameDo: aBlock. [

	self makeCurrentDuring: [
		self checkForError.
		aBlock value.
		self endFrame.
		self flag: #todo. "can we get rid of endFrame?"
		self checkForError.
		self swapBuffers]
]

{ #category : #parameters }
GLLibrary >> numExtensions [

	^ self getIntegerParameter: GL_NUM_EXTENSIONS
]

{ #category : #accessing }
GLLibrary >> profile [

	^ profile
]

{ #category : #accessing }
GLLibrary >> profile: anObject [

	profile := anObject
]

{ #category : #'error handling' }
GLLibrary >> profileError [

	self error: 'Not supported in currently active OpenGL library profile'
]

{ #category : #resources }
GLLibrary >> registerObject: glObject [

	context registerObject: glObject
]

{ #category : #parameters }
GLLibrary >> rendererString [

	^ self getStringParameter: GL_RENDERER
]

{ #category : #helpers }
GLLibrary >> setClearColor: aColor [

	self
		clearColor: aColor red
		with: aColor green
		with: aColor blue
		with: aColor alpha
]

{ #category : #helpers }
GLLibrary >> setViewport: aRectangle [

	self
		viewport: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
]

{ #category : #parameters }
GLLibrary >> shadingLanguageVersionString [

	^ self getStringParameter: GL_SHADING_LANGUAGE_VERSION
]

{ #category : #'context delegation' }
GLLibrary >> shouldClose [

	self flag: #todo. "does this really belong here?"
	^ context shouldClose
]

{ #category : #'context delegation' }
GLLibrary >> swapBuffers [

	context swapBuffers
]

{ #category : #parameters }
GLLibrary >> vendorString [

	^ self getStringParameter: GL_VENDOR
]

{ #category : #accessing }
GLLibrary >> version [

	^ self class versionNumber
]

{ #category : #'error handling' }
GLLibrary >> versionError [

	self error: 'Not supported in currently active OpenGL library version'
]

{ #category : #parameters }
GLLibrary >> versionString [

	^ self getStringParameter: GL_VERSION
]

{ #category : #helpers }
GLLibrary >> viewport: aRectangle during: aBlock [

	| previousViewport |
	previousViewport := self getViewport.
	self setViewport: aRectangle.
	aBlock value.
	self setViewport: previousViewport
]
