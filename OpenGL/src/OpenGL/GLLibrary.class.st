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
	#category : #'OpenGL-API',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:13'
}
GLLibrary class >> api [

	self subclassResponsibility
]

{
	#category : #querying,
	#timestamp : 'stlu 11/12/2020 14:56'
}
GLLibrary class >> api: aSymbol [

	^ GLLibrary subclasses detect: [:cls | cls api = aSymbol]
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/3/2020 12:53'
}
GLLibrary class >> context: aContext [

	^ self context: aContext profile: self defaultProfile
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/3/2020 12:53'
}
GLLibrary class >> context: aContext profile: aSymbol [

	^ self new
		context: aContext;
		profile: aSymbol;
		yourself
]

{
	#category : #examples,
	#timestamp : 'stlu 11/13/2020 13:04'
}
GLLibrary class >> example1 [ "self example1"
	"A minimal OpenGL example.
	Prints information about the created OpenGL context to the Transcript."
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

{
	#category : #examples,
	#timestamp : 'stlu 11/9/2020 18:29'
}
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

{
	#category : #'class initialization',
	#timestamp : 'stlu 10/26/2020 10:42'
}
GLLibrary class >> initialize [

	Smalltalk addToStartUpList: self.
	Environment current at: #GL put: nil
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:02'
}
GLLibrary class >> majorVersion [

	self subclassResponsibility
]

{
	#category : #querying,
	#timestamp : 'stlu 11/12/2020 14:58'
}
GLLibrary class >> majorVersion: major minorVersion: minor [

	^ self withAllSubclasses detect: [:cls |
		cls majorVersion = major and: [cls minorVersion = minor]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:03'
}
GLLibrary class >> minorVersion [

	self subclassResponsibility
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 10/26/2020 10:31'
}
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

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 14:49'
}
GLLibrary class >> versionNumber [

	self subclassResponsibility
]

{
	#category : #accessing,
	#timestamp : ''
}
GLLibrary class >> wglGetProcAddress: aString [
	<apicall: void* 'wglGetProcAddress' (char*) module: 'Opengl32.dll'>
	^ self externalCallFailed
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:11'
}
GLLibrary >> api [

	^ self class api
]

{
	#category : #'error handling',
	#timestamp : 'stlu 10/26/2020 11:05'
}
GLLibrary >> assertIsCurrent [
	
	self assert: GL == self
]

{
	#category : #resources,
	#timestamp : 'stlu 10/16/2020 12:43'
}
GLLibrary >> at: aKey [

	^ context resources userData at: aKey
]

{
	#category : #resources,
	#timestamp : 'stlu 10/16/2020 12:43'
}
GLLibrary >> at: aKey ifAbsentPut: aBlock [

	^ context resources userData at: aKey ifAbsentPut: aBlock
]

{
	#category : #resources,
	#timestamp : 'stlu 10/16/2020 12:43'
}
GLLibrary >> at: aKey put: aValue [

	^ context resources userData
			at: aKey
			put: aValue
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/3/2020 15:07'
}
GLLibrary >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |

	error := self getError.
	(error ~= 0) ifTrue: [self error: (self errorString: error) ]

]

{
	#category : #accessing,
	#timestamp : 'stlu 10/16/2020 12:43'
}
GLLibrary >> context [

	^ context
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/19/2020 16:20'
}
GLLibrary >> context: aContext [

	context := aContext
]

{
	#category : #'context delegation',
	#timestamp : ''
}
GLLibrary >> destroy [

	context destroy
]

{
	#category : #'context delegation',
	#timestamp : 'stlu 10/16/2020 12:47'
}
GLLibrary >> endFrame [

	context endFrame
]

{
	#category : #'error handling',
	#timestamp : ''
}
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

{
	#category : #'error handling',
	#timestamp : ''
}
GLLibrary >> externalCallFailed [

	| code |
	code := ExternalFunction getLastError.
	code = 13 " unable to get function address "
		ifTrue: [ | function pointer |
			function := thisContext sender method literalAt: 1.
			" if we already saved a new address in the function, do not try it again "
			function isNull ifTrue: [
				pointer := self class wglGetProcAddress: function name asString.
				pointer isNull ifFalse: [
					function setHandle: pointer getHandle.
					^ thisContext sender receiver perform: thisContext sender selector withArguments: thisContext sender arguments]]].
	
	^ self error: (ExternalFunction errorMessageFor: code)
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/3/2020 15:01'
}
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

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 14:17'
}
GLLibrary >> getExtensions [

	| extensionsString |
	extensionsString := self getExtensionsString.
	^ extensionsString splitBy: ' '
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 14:06'
}
GLLibrary >> getExtensionsString [

	^ self getStringParameter: GL_EXTENSIONS
]

{
	#category : #'parameters - helpers',
	#timestamp : 'stlu 11/3/2020 15:15'
}
GLLibrary >> getIntegerParameter: name [

	IntegerArray new: 1 during: [:result |
		self getIntegerv: name with: result.
		^ result first]
]

{
	#category : #'parameters - helpers',
	#timestamp : 'stlu 11/3/2020 15:17'
}
GLLibrary >> getIntegerParameters: name size: numParameters [

	| data |
	data := IntegerArray new: numParameters.
	self getIntegerv: name with: data.
	^ data
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 13:26'
}
GLLibrary >> getNumExtensions [

	^ self getIntegerParameter: GL_NUM_EXTENSIONS
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 15:10'
}
GLLibrary >> getProfile [

	^ #'' "by default none"
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/11/2020 15:13'
}
GLLibrary >> getRendererString [

	^ self getStringParameter: GL_RENDERER
]

{
	#category : #resources,
	#timestamp : ''
}
GLLibrary >> getShaderProgram: aClass [

	^ context resources getShaderProgram: aClass library: self
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 14:34'
}
GLLibrary >> getShadingLanguageVersion [

	^ #(0 0) "by default unsupported"
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 14:04'
}
GLLibrary >> getShadingLanguageVersionString [

	^ self getStringParameter: GL_SHADING_LANGUAGE_VERSION
]

{
	#category : #'parameters - helpers',
	#timestamp : 'stlu 11/3/2020 15:13'
}
GLLibrary >> getStringParameter: name [

	| data |
	data := self getString: name.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{
	#category : #'parameters - helpers',
	#timestamp : 'stlu 11/3/2020 15:13'
}
GLLibrary >> getStringParameter: name at: index [

	| data |
	data := self getStringi: name with: index.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/11/2020 15:13'
}
GLLibrary >> getVendorString [

	^ self getStringParameter: GL_VENDOR
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 15:06'
}
GLLibrary >> getVersion [
	"Returns an array of two elements, the major version and the minor version."
	self subclassResponsibility
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/12/2020 13:26'
}
GLLibrary >> getVersionNumber [

	| version |
	version := self getVersion.
	^ version first * 10 + version second
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/11/2020 15:13'
}
GLLibrary >> getVersionString [

	^ self getStringParameter: GL_VERSION
]

{
	#category : #parameters,
	#timestamp : 'stlu 11/3/2020 15:17'
}
GLLibrary >> getViewport [

	| viewport |
	viewport := self getIntegerParameters: GL_VIEWPORT size: 4.
	^ Rectangle
		origin: viewport first @ viewport second
		extent: viewport third @ viewport fourth
]

{
	#category : #testing,
	#timestamp : 'stlu 11/12/2020 15:52'
}
GLLibrary >> isCompatibilityProfile [

	^ profile = #compatibility
]

{
	#category : #testing,
	#timestamp : 'stlu 11/12/2020 15:52'
}
GLLibrary >> isCoreProfile [

	^ profile = #core
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:03'
}
GLLibrary >> majorVersion [

	^ self class majorVersion
]

{
	#category : #activation,
	#timestamp : ''
}
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
			^ aBlock value] ensure: [
				GL := nil.
				context deactivate]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:03'
}
GLLibrary >> minorVersion [

	^ self class minorVersion
]

{
	#category : #activation,
	#timestamp : ''
}
GLLibrary >> newFrameDo: aBlock. [

	self makeCurrentDuring: [
		self checkForError.
		aBlock value.
		self endFrame.
		self flag: #todo. "can we get rid of endFrame?"
		self checkForError.
		self swapBuffers]
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 12:53'
}
GLLibrary >> profile [

	^ profile
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/3/2020 12:53'
}
GLLibrary >> profile: anObject [

	profile := anObject
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/3/2020 12:50'
}
GLLibrary >> profileError [

	self error: 'Not supported in currently active OpenGL library profile'
]

{
	#category : #resources,
	#timestamp : 'stlu 10/26/2020 12:15'
}
GLLibrary >> registerObject: glObject [

	context registerObject: glObject
]

{
	#category : #helpers,
	#timestamp : 'stlu 11/3/2020 15:01'
}
GLLibrary >> setClearColor: aColor [

	self
		clearColor: aColor red
		with: aColor green
		with: aColor blue
		with: aColor alpha
]

{
	#category : #helpers,
	#timestamp : 'stlu 11/3/2020 15:03'
}
GLLibrary >> setViewport: aRectangle [

	self
		viewport: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
]

{
	#category : #'context delegation',
	#timestamp : ''
}
GLLibrary >> shouldClose [

	self flag: #todo. "does this really belong here?"
	^ context shouldClose
]

{
	#category : #'context delegation',
	#timestamp : ''
}
GLLibrary >> swapBuffers [

	context swapBuffers
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/2/2020 15:01'
}
GLLibrary >> version [

	^ self class versionNumber
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/3/2020 12:51'
}
GLLibrary >> versionError [

	self error: 'Not supported in currently active OpenGL library version'
]

{
	#category : #helpers,
	#timestamp : 'stlu 11/3/2020 15:04'
}
GLLibrary >> viewport: aRectangle during: aBlock [

	| previousViewport |
	previousViewport := self getViewport.
	self setViewport: aRectangle.
	aBlock value.
	self setViewport: previousViewport
]
