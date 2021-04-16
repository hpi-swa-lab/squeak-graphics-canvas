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
	#classVars : [
		'ErrorMessages'
	],
	#pools : [
		'GLConstants'
	],
	#category : #'OpenGL-API',
	#commentStamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 2/18/2021 22:27'
}
GLLibrary class >> api: aSymbol [

	^ GLLibrary subclasses detect: [:cls |
		cls isAPI: aSymbol]
]

{
	#category : #querying,
	#timestamp : 'stlu 12/28/2020 13:25'
}
GLLibrary class >> api: apiSymbol majorVersion: major minorVersion: minor [

	^ (self api: apiSymbol) majorVersion: major minorVersion: minor
]

{
	#category : #querying,
	#timestamp : 'stlu 2/18/2021 22:45'
}
GLLibrary class >> api: apiSymbol majorVersion: major minorVersion: minor profile: profileSymbol [

	^ (self api: apiSymbol) majorVersion: major minorVersion: minor profile: profileSymbol
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
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:36'
}
GLLibrary class >> defaultProfile [

	^ nil
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
	#timestamp : 'stlu 2/18/2021 22:47'
}
GLLibrary class >> example2 [ "self example2"
	"A very simple OpenGL 1.0 example showing a rotating red rectangle on white background.
	Click anywhere to dismiss it."
	| context |
	context := B3DContext bounds: (0@0 extent: 400@400).
	[
		(GL10 context: context) makeCurrentDuring: [
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
	#timestamp : 'stlu 12/28/2020 18:25'
}
GLLibrary class >> initialize [

	Smalltalk addToStartUpList: self.
	Environment current at: #GL put: nil.
	self initializeErrorMessages
]

{
	#category : #'class initialization',
	#timestamp : 'stlu 12/28/2020 18:47'
}
GLLibrary class >> initializeErrorMessages [

	ErrorMessages := {
		GL_INVALID_ENUM -> 'Invalid enum. An unacceptable value is specified for an enumerated argument.'.
		GL_INVALID_VALUE -> 'Invalid value. A numeric argument is out of range.'.
		GL_INVALID_OPERATION -> 'Invalid operation. The specified operation is not allowed in the current state.'.
		GL_STACK_OVERFLOW -> 'Stack overflow. An attempt has been made to perform an operation that would cause an internal stack overflow.'.
		GL_STACK_UNDERFLOW -> 'Stack underflow. An attempt has been made to perform an operation that would cause an internal stack to underflow.'.
		GL_OUT_OF_MEMORY -> 'Out of memory. There is not enought memory left to execute the command.'.
		GL_INVALID_FRAMEBUFFER_OPERATION -> 'Invalid framebuffer operation. The framebuffer object is not complete.'.
		GL_TEXTURE_TOO_LARGE_EXT -> 'Texture too large. Cannot accomodate a texture of the size requested.'.
		GL_TABLE_TOO_LARGE -> 'Table too large.'.
		GL_NO_ERROR -> 'No error. No error has been recorded.'
	} as: Dictionary
]

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:23'
}
GLLibrary class >> isAPI: aSymbol [

	^ self api = aSymbol
]

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:20'
}
GLLibrary class >> isMajorVersion: aNumber [

	^ self majorVersion = aNumber
]

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:20'
}
GLLibrary class >> isMinorVersion: aNumber [

	^ self minorVersion = aNumber
]

{
	#category : #testing,
	#timestamp : 'stlu 2/18/2021 22:29'
}
GLLibrary class >> isProfile: aSymbol [

	^ true
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:19'
}
GLLibrary class >> majorVersion [

	^ nil
]

{
	#category : #querying,
	#timestamp : 'stlu 2/18/2021 22:36'
}
GLLibrary class >> majorVersion: major minorVersion: minor [

	^ self majorVersion: major minorVersion: minor profile: self defaultProfile
]

{
	#category : #querying,
	#timestamp : 'stlu 2/18/2021 22:28'
}
GLLibrary class >> majorVersion: major minorVersion: minor profile: profileSymbol [

	^ self withAllSubclasses detect: [:cls |
		(cls isMajorVersion: major)
			and: [cls isMinorVersion: minor]
			and: [cls isProfile: profileSymbol]]
]

{
	#category : #accessing,
	#timestamp : 'stlu 2/18/2021 22:19'
}
GLLibrary class >> minorVersion [

	^ nil
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
	#category : #'tool icons',
	#timestamp : 'stlu 2/18/2021 21:30'
}
GLLibrary class >> toolIconSelector: aSymbol [

	self methodDictionary at: aSymbol ifPresent: [ :method |
		method selectorsDo: [:messageSelector |
			messageSelector == #profileError ifTrue: [^ #no]]].
	
	^ super toolIconSelector: aSymbol
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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 12/3/2020 18:54'
}
GLLibrary >> at: aKey [

	self deprecated: 'Access userData directly instead'.
	^ self userData at: aKey
]

{
	#category : #resources,
	#timestamp : 'stlu 12/3/2020 18:54'
}
GLLibrary >> at: aKey ifAbsentPut: aBlock [

	self deprecated: 'Access userData directly instead'.
	^ self userData at: aKey ifAbsentPut: aBlock
]

{
	#category : #resources,
	#timestamp : 'stlu 12/3/2020 18:54'
}
GLLibrary >> at: aKey put: aValue [

	self deprecated: 'Access userData directly instead'.
	^ self userData at: aKey put: aValue
]

{
	#category : #'error handling',
	#timestamp : 'stlu 12/22/2020 15:14'
}
GLLibrary >> checkForError [
	"Check for any OpenGL errors, and raise an Error if any exist."
	| error |
	error := self getError.
	error ~= GL_NO_ERROR ifTrue: [
		self error: (self errorString: error)]

]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 12:05'
}
GLLibrary >> clearColor: aColor [

	self
		clearColor: aColor red
		with: aColor green
		with: aColor blue
		with: aColor alpha
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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#timestamp : 'stlu 12/28/2020 18:31'
}
GLLibrary >> errorString: error [

	^ ErrorMessages
		at: error
		ifAbsent: ['Unknown error ' , error asString]
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 19:11'
}
GLLibrary >> extensions [

	^ self context version getExtensions: self
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:24'
}
GLLibrary >> extensionsString [

	^ self stringStateNamed: GL_EXTENSIONS
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:54'
}
GLLibrary >> getIntegerParameter: enum [

	self deprecated: 'Use #integerStateNamed: instead.'.
	^ self integerStateNamed: enum
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:54'
}
GLLibrary >> getIntegerParameters: enum size: numElements [

	self deprecated: 'Use #integerStateNamed:ofSize: instead.'.
	^ self integerStateNamed: enum ofSize: numElements
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:55'
}
GLLibrary >> getStringParameter: enum [

	self deprecated: 'Use #stringStateNamed: instead.'.
	^ self stringStateNamed: enum
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:56'
}
GLLibrary >> getStringParameter: enum at: index [

	self deprecated: 'Use #stringStateNamed:at: instead.'.
	^ self stringStateNamed: enum at: index
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:53'
}
GLLibrary >> integerStateNamed: enum [

	| data |
	data := IntegerArray new: 1.
	self getIntegerv: enum with: data.
	^ data at: 1
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:52'
}
GLLibrary >> integerStateNamed: enum ofSize: numElements [

	| data |
	data := IntegerArray new: numElements.
	self getIntegerv: enum with: data.
	^ data
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
	#timestamp : 'stlu 12/3/2020 19:44'
}
GLLibrary >> makeCurrentDuring: aBlock [

	GL
		ifNotNil: [:previousLib |
			| previousContext |
			self == previousLib ifTrue: [^ aBlock value].
			(previousContext := previousLib context) == context
				ifTrue: [[GL := self. ^ aBlock value] ensure: [GL := previousLib]]
				ifFalse: [
					[previousContext deactivate.
					context activate.
					GL := self.
					^ aBlock value] ensure: [
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
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:37'
}
GLLibrary >> maxArrayTextureLayers [
	"Maximum number of layers allowed in an array texture. At least 256."
	^ self integerStateNamed: GL_MAX_ARRAY_TEXTURE_LAYERS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:37'
}
GLLibrary >> maxCombinedTextureImageUnits [
	"Maximum number of texture image units. At least 80."
	^ self integerStateNamed: GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:37'
}
GLLibrary >> maxTextureSize [
	"Rough estimate of the largest texture that the GL can handle. At least 1024."
	^ self integerStateNamed: GL_MAX_TEXTURE_SIZE
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:38'
}
GLLibrary >> maxUniformBlockSize [
	"Maximum size in basic machine units of a uniform block. At least 16384."
	^ self integerStateNamed: GL_MAX_UNIFORM_BLOCK_SIZE
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:38'
}
GLLibrary >> maxUniformBufferBindings [
	"Maximum number of uniform buffer binding points on the context. At least 36."
	^ self integerStateNamed: GL_MAX_UNIFORM_BUFFER_BINDINGS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:39'
}
GLLibrary >> maxUniformLocations [
	"Maximum number of explicitly assignable uniform locations. At least 1024."
	^ self integerStateNamed: GL_MAX_UNIFORM_LOCATIONS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:39'
}
GLLibrary >> maxVaryingComponents [
	"Number of components for varying variables. At least 60."
	^ self integerStateNamed: GL_MAX_VARYING_COMPONENTS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:38'
}
GLLibrary >> maxVaryingVectors [
	"Number of 4-vectors for varying variables. Equivalent to #maxVaryingComponents / 4. At least 15."
	^ self getIntegerParameter: GL_MAX_VARYING_VECTORS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 18:39'
}
GLLibrary >> maxVertexAttributeBindings [
	"Maximum number of vertex buffers that may be bound."
	^ self integerStateNamed: GL_MAX_VERTEX_ATTRIB_BINDINGS
]

{
	#category : #limits,
	#timestamp : 'stlu 4/15/2021 19:08'
}
GLLibrary >> maxVertexAttributes [
	"Maximum number of 4-component generic vertex attributes accessible to a vertex shader. At least 16."
	self flag: #todo. "Move these context-specific constants to GLContext"
	^ self integerStateNamed: GL_MAX_VERTEX_ATTRIBS
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
	#timestamp : 'stlu 11/13/2020 18:20'
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
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:23'
}
GLLibrary >> numExtensions [

	^ self integerStateNamed: GL_NUM_EXTENSIONS
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
	#timestamp : 'stlu 12/3/2020 18:41'
}
GLLibrary >> programs [

	^ context programs
]

{
	#category : #resources,
	#timestamp : 'stlu 10/26/2020 12:15'
}
GLLibrary >> registerObject: glObject [

	context registerObject: glObject
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:32'
}
GLLibrary >> rendererString [

	^ self stringStateNamed: GL_RENDERER
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 19:21'
}
GLLibrary >> shadingLanguageVersion [

	^ self context version getShadingLanguageVersion: self
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:33'
}
GLLibrary >> shadingLanguageVersionString [

	^ self stringStateNamed: GL_SHADING_LANGUAGE_VERSION
]

{
	#category : #'context delegation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLLibrary >> shouldClose [

	self flag: #todo. "does this really belong here?"
	^ context shouldClose
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:51'
}
GLLibrary >> stringStateNamed: enum [

	| data |
	data := self getString: enum.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{
	#category : #'state access',
	#timestamp : 'stlu 4/15/2021 11:51'
}
GLLibrary >> stringStateNamed: enum at: index [

	| data |
	data := self getStringi: enum with: index.
	data isNull ifTrue: [^ self checkForError].
	^ (data asType: ExternalType string) fromCString
]

{
	#category : #'context delegation',
	#timestamp : 'stlu 11/13/2020 18:20'
}
GLLibrary >> swapBuffers [

	context swapBuffers
]

{
	#category : #resources,
	#timestamp : 'stlu 12/3/2020 18:54'
}
GLLibrary >> userData [

	^ context userData
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:34'
}
GLLibrary >> vendorString [

	^ self stringStateNamed: GL_VENDOR
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 19:22'
}
GLLibrary >> version [

	^ self context version getVersion: self
]

{
	#category : #'error handling',
	#timestamp : 'stlu 11/3/2020 12:51'
}
GLLibrary >> versionError [

	self error: 'Not supported in currently active OpenGL library version'
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 18:34'
}
GLLibrary >> versionString [

	^ self stringStateNamed: GL_VERSION
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 12:08'
}
GLLibrary >> viewport [

	| viewport |
	viewport := self integerStateNamed: GL_VIEWPORT ofSize: 4.
	^ Rectangle
		origin: viewport first @ viewport second
		extent: viewport third @ viewport fourth
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 12:05'
}
GLLibrary >> viewport: aRectangle [

	self
		viewport: aRectangle left
		with: aRectangle top
		with: aRectangle width
		with: aRectangle height
]

{
	#category : #'convencience api',
	#timestamp : 'stlu 4/15/2021 12:07'
}
GLLibrary >> viewport: aRectangle during: aBlock [

	| previousViewport |
	previousViewport := self viewport.
	self viewport: aRectangle.
	aBlock value.
	self viewport: previousViewport
]
