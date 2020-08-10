Class {
	#name : #GLFW,
	#superclass : #ExternalLibrary,
	#classInstVars : [
		'instance'
	],
	#category : #'MPOpenGL-Core'
}

{ #category : #constants }
GLFW class >> CONTEXT_VERSION_MAJOR [
	^16r22002
]

{ #category : #constants }
GLFW class >> CONTEXT_VERSION_MINOR [
	^16r00022003
]

{ #category : #constants }
GLFW class >> CURSOR [
	^16r33001

]

{ #category : #constants }
GLFW class >> CURSOR_DISABLED [
	^16r34003

]

{ #category : #constants }
GLFW class >> OPENGL_CORE_PROFILE [
	^16r00032001
]

{ #category : #constants }
GLFW class >> OPENGL_FORWARD_COMPAT [
	^16r22006
]

{ #category : #constants }
GLFW class >> OPENGL_PROFILE [
	^16r00022008
]

{ #category : #'as yet unclassified' }
GLFW class >> initialize [
	Smalltalk addToStartUpList: self.
]

{ #category : #accessing }
GLFW class >> moduleName [

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

{ #category : #'as yet unclassified' }
GLFW class >> startUp [
	[ instance := self new. instance init ] on: Error do: [ "do nothing" ]
]

{ #category : #accessing }
GLFW class >> value [
	^ instance
]

{ #category : #'glfw api' }
GLFW >> createWindow: anInteger height: anInteger2 title: aString and: anUndefinedObject and: anUndefinedObject5 [ 
	<apicall: void* 'glfwCreateWindow' (long long char* void* void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> createWindowWidth: width height: height title: title monitor: monitor share: share [
<apicall: void* 'glfwCreateWindow' (long long char* void* void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> destroyWindow: handle [
<apicall: void* 'glfwDestroyWindow' (void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> getCurrentContext [
<apicall: void* 'glfwGetCurrentContext' ()>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> init [
<apicall: void 'glfwInit' ()>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> makeContextCurrent: window [
<apicall: void 'glfwMakeContextCurrent' (void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> pollEvents [
<apicall: long 'glfwPollEvents' ()>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> setCursorPosCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetCursorPosCallback' (void* void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> setFramebufferSizeCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetFramebufferSizeCallback' (void* void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> setInputMode: anExternalData with: anInteger with: anInteger2 [ 
	<apicall: void* 'glfwSetInputMode' (void* long long)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> setMouseButtonCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetMouseButtonCallback' (void* void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> swapBuffers: window [
<apicall: void 'glfwSwapBuffers' (void*)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> swapInterval: aNumber [
<apicall: void 'glfwSwapInterval' (long)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> terminate [
	<apicall: void 'glfwTerminate' ()>
	^ self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> windowHint: hint value: value [
<apicall: void 'glfwWindowHint' (long long)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> windowHint: hint with: value [ 
	<apicall: void 'glfwWindowHint' (long long)>
	^self externalCallFailed
]

{ #category : #'glfw api' }
GLFW >> windowShouldClose: window [
<apicall: long 'glfwWindowShouldClose' (void*)>
	^self externalCallFailed
]
