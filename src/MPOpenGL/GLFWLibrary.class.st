Class {
	#name : #GLFWLibrary,
	#superclass : #ExternalLibrary,
	#pools : [
		'GLFWConstants'
	],
	#category : #'MPOpenGL-GLFW'
}

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

{ #category : #constants }
GLFWLibrary >> CONTEXT_VERSION_MAJOR [

	^ CONTEXT_VERSION_MAJOR
]

{ #category : #constants }
GLFWLibrary >> CONTEXT_VERSION_MINOR [

	^ CONTEXT_VERSION_MINOR
]

{ #category : #'api - initialized' }
GLFWLibrary >> createWindowWidth: width height: height title: title monitor: monitor share: share [

	<apicall: void* 'glfwCreateWindow' (long long char* void* void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> destroyWindow: handle [

	<apicall: void* 'glfwDestroyWindow' (void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> getCurrentContext [

	<apicall: void* 'glfwGetCurrentContext' ()>
	^ self externalCallFailed
]

{ #category : #helpers }
GLFWLibrary >> getError [

	^ self getError: nil
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> getError: stringOrNil [

	<apicall: int 'glfwGetError' (string)>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> getVersionMajor: major minor: minor rev: rev [

	<apicall: void 'glfwGetVersion' (int* int* int*)>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> getVersionString [

	<apicall: char* 'glfwGetVersionString' ()>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> init [

	<apicall: int 'glfwInit' ()>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> initHint: hint value: value [

	<apicall: void 'glfwInitHint' (int int)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> makeContextCurrent: window [

	<apicall: void 'glfwMakeContextCurrent' (void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> pollEvents [

	<apicall: int 'glfwPollEvents' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> setCursorPosCallback: anExternalData with: aBlock [

	<apicall: void* 'glfwSetCursorPosCallback' (void* void*)>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> setErrorCallback: aBlock [

	self notYetImplemented
]

{ #category : #'api - initialized' }
GLFWLibrary >> setFramebufferSizeCallback: anExternalData with: aBlock [

	<apicall: void* 'glfwSetFramebufferSizeCallback' (void* void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> setMouseButtonCallback: anExternalData with: aBlockClosure [

	<apicall: void* 'glfwSetMouseButtonCallback' (void* void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> swapBuffers: window [

	<apicall: void 'glfwSwapBuffers' (void*)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> swapInterval: aNumber [

	<apicall: void 'glfwSwapInterval' (int)>
	^ self externalCallFailed
]

{ #category : #'api - uninitialized' }
GLFWLibrary >> terminate [

	<apicall: void 'glfwTerminate' ()>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> windowHint: hint value: value [

	<apicall: void 'glfwWindowHint' (int int)>
	^ self externalCallFailed
]

{ #category : #'api - initialized' }
GLFWLibrary >> windowShouldClose: window [

	<apicall: long 'glfwWindowShouldClose' (void*)>
	^ self externalCallFailed
]
