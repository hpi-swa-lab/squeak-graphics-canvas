Class {
	#name : #GLFWLibrary,
	#superclass : #ExternalLibrary,
	#pools : [
		'GLFWConstants'
	],
	#category : #'GLFW-Core'
}

{ #category : #examples }
GLFWLibrary class >> example1 [ "self example1"
	"A minimal GLFW example window. Dismiss by clicking anywhere inside Squeak.
	Do NOT force quit the window (unless you want your Squeak to force quit too)."
	| window |
	[
		window := GLFWWindow
					width: 400
					height: 400
					title: 'GLFW example1'.
		GLFW getError ~= NO_ERROR ifTrue: [
			^ self error: 'GLFW Error'].
		[Sensor anyButtonPressed] whileFalse
	] ensure: [
		window ifNotNil: [GLFW destroyWindow: window]]
]

{ #category : #'class initialization' }
GLFWLibrary class >> initialize [

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self.
	Smalltalk at: #GLFW put: self new.
	self startUp
]

{ #category : #accessing }
GLFWLibrary class >> moduleName [

	Smalltalk platformName = 'Win32' ifTrue: [
		^ 'glfw3.dll'].
	Smalltalk platformName = 'Mac OS' ifTrue:[
		^ Smalltalk osVersion asNumber < 1000 
			ifTrue: [self notYetImplemented]
			ifFalse:['glfw3.framework']].
	Smalltalk platformName = 'unix' ifTrue: [
		"default to X11 window system"
		^ Smalltalk osVersion = 'linux-gnu'
			ifTrue: ['libglfw.so']
			ifFalse: ['glfw3']].
	self error: 'Cannot identify platform'
]

{ #category : #'system startup' }
GLFWLibrary class >> shutDown [

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib terminate] ifError: ["do nothing"]]
]

{ #category : #'system startup' }
GLFWLibrary class >> startUp [

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib init] ifError: ["do nothing"]]
]

{ #category : #'api - windows' }
GLFWLibrary >> createWindow: width with: height with: title with: monitor with: share [

	<apicall: GLFWWindow* 'glfwCreateWindow' (int int string GLFWMonitor* GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> defaultWindowHints [

	<apicall: void 'glfwDefaultWindowHints' ()>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> destroyWindow: handle [

	<apicall: void 'glfwDestroyWindow' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> getCurrentContext [

	<apicall: GLFWWindow* 'glfwGetCurrentContext' ()>
	^ self externalCallFailed
]

{ #category : #helpers }
GLFWLibrary >> getError [

	^ self getError: nil
]

{ #category : #'api - error handling' }
GLFWLibrary >> getError: stringOrNil [

	<apicall: int 'glfwGetError' (string)>
	^ self externalCallFailed
]

{ #category : #'api - input' }
GLFWLibrary >> getKey: window with: key [

	<apicall: int 'glfwGetKey' (GLFWWindow* int)>
	^ self externalCallFailed
]

{ #category : #'api - accessing' }
GLFWLibrary >> getVersion: major with: minor with: rev [

	<apicall: void 'glfwGetVersion' (int* int* int*)>
	^ self externalCallFailed
]

{ #category : #'api - accessing' }
GLFWLibrary >> getVersionString [

	<apicall: char* 'glfwGetVersionString' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> init [

	<apicall: int 'glfwInit' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> initHint: hint with: value [

	<apicall: void 'glfwInitHint' (int int)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> makeContextCurrent: window [

	<apicall: void 'glfwMakeContextCurrent' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - events' }
GLFWLibrary >> pollEvents [

	<apicall: int 'glfwPollEvents' ()>
	^ self externalCallFailed
]

{ #category : #'api - input' }
GLFWLibrary >> setCursorPosCallback: window with: aBlock [

	<apicall: void 'glfwSetCursorPosCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #'api - error handling' }
GLFWLibrary >> setErrorCallback: aBlock [

	<apicall: void 'glfwSetErrorCallback' (void*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> setFramebufferSizeCallback: window with: aBlock [

	<apicall: void 'glfwSetFramebufferSizeCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #'api - input' }
GLFWLibrary >> setMouseButtonCallback: window with: aBlockClosure [

	<apicall: void 'glfwSetMouseButtonCallback' (GLFWWindow* void*)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> setWindowShouldClose: window with: value [

	<apicall: void 'glfwSetWindowShouldClose' (GLFWWindow* int)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> setWindowTitle: window with: title [

	<apicall: void 'glfwSetWindowTitle' (GLFWWindow* string)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> swapBuffers: window [

	<apicall: void 'glfwSwapBuffers' (GLFWWindow*)>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> swapInterval: aNumber [

	<apicall: void 'glfwSwapInterval' (int)>
	^ self externalCallFailed
]

{ #category : #'api - initialization' }
GLFWLibrary >> terminate [

	<apicall: void 'glfwTerminate' ()>
	^ self externalCallFailed
]

{ #category : #accessing }
GLFWLibrary >> version [

	| major minor revision |
	major := IntegerArray new: 1.
	minor := IntegerArray new: 1.
	revision := IntegerArray new: 1.
	self getVersion: major with: minor with: revision.
	^ { major first . minor first . revision first }
]

{ #category : #accessing }
GLFWLibrary >> versionString [

	^ self getVersionString
]

{ #category : #'api - windows' }
GLFWLibrary >> windowHint: hint with: value [

	<apicall: void 'glfwWindowHint' (int int)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> windowHintString: hint with: value [

	<apicall: void 'glfwWindowHintString' (int string)>
	^ self externalCallFailed
]

{ #category : #'api - windows' }
GLFWLibrary >> windowShouldClose: window [

	<apicall: bool 'glfwWindowShouldClose' (GLFWWindow*)>
	^ self externalCallFailed
]
