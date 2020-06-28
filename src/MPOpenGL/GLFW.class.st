Class {
	#name : #GLFW,
	#superclass : #Object,
	#category : 'MPOpenGL-Core'
}

{ #category : #primitive }
GLFW class >> CONTEXT_VERSION_MAJOR [
	^16r22002
]

{ #category : #primitive }
GLFW class >> CONTEXT_VERSION_MINOR [
	^16r00022003
]

{ #category : #primitive }
GLFW class >> CURSOR [
	^16r33001

]

{ #category : #primitive }
GLFW class >> CURSOR_DISABLED [
	^16r34003

]

{ #category : #primitive }
GLFW class >> GLFW_CLIENT_API [
	^16r00022001
]

{ #category : #primitive }
GLFW class >> GLFW_NO_API [
	^0
]

{ #category : #primitive }
GLFW class >> OPENGL_CORE_PROFILE [
	^16r00032001
]

{ #category : #primitive }
GLFW class >> OPENGL_FORWARD_COMPAT [
	^16r22006
]

{ #category : #primitive }
GLFW class >> OPENGL_PROFILE [
	^16r00022008
]

{ #category : #primitive }
GLFW class >> createWindow: anInteger height: anInteger2 title: aString and: anUndefinedObject and: anUndefinedObject5 [ 
	<apicall: void* 'glfwCreateWindow' (long long char* void* void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> createWindowWidth: width height: height title: title monitor: monitor share: share [
<apicall: void* 'glfwCreateWindow' (long long char* void* void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> destroyWindow: handle [
<apicall: void* 'glfwDestroyWindow' (void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> getCurrentContext [
<apicall: void* 'glfwGetCurrentContext' () module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> getRequiredInstanceExtensions: count [
	<apicall: byte* 'glfwGetRequiredInstanceExtensions' (uint32_t*) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> init [
<apicall: void 'glfwInit' () module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> initialize [
	Smalltalk addToStartUpList: self.
]

{ #category : #'as yet unclassified' }
GLFW class >> makeContextCurrent: window [
<apicall: void 'glfwMakeContextCurrent' (void*) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> pollEvents [
<apicall: long 'glfwPollEvents' () module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #primitive }
GLFW class >> setCursorPosCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetCursorPosCallback' (void* void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #primitive }
GLFW class >> setFramebufferSizeCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetFramebufferSizeCallback' (void* void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #primitive }
GLFW class >> setInputMode: anExternalData with: anInteger with: anInteger2 [ 
	<apicall: void* 'glfwSetInputMode' (void* long long) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #primitive }
GLFW class >> setMouseButtonCallback: anExternalData with: aBlockClosure [ 
	<apicall: void* 'glfwSetMouseButtonCallback' (void* void*) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> startUp [
	"self init"
]

{ #category : #'as yet unclassified' }
GLFW class >> swapBuffers: window [
<apicall: void 'glfwSwapBuffers' (void*) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> swapInterval: aNumber [
<apicall: void 'glfwSwapInterval' (long) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> terminate [
	<apicall: void 'glfwTerminate' () module: 'libglfw.so'>
	^ self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> windowHint: hint value: value [
<apicall: void 'glfwWindowHint' (long long) module: 'libglfw.so'>
	^self externalCallFailed
]

{ #category : #primitive }
GLFW class >> windowHint: hint with: value [ 
	<apicall: void 'glfwWindowHint' (long long) module: 'libglfw'>
	^self externalCallFailed
]

{ #category : #'as yet unclassified' }
GLFW class >> windowShouldClose: window [
<apicall: long 'glfwWindowShouldClose' (void*) module: 'libglfw.so'>
	^self externalCallFailed
]
