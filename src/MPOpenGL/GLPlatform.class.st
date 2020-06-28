Class {
	#name : #GLPlatform,
	#superclass : #Object,
	#pools : [
		'OpenGLConstants'
	],
	#category : 'MPOpenGL-Core'
}

{ #category : #initialize }
GLPlatform >> beginFrame: aGLInstance [
	"do nothing"
]

{ #category : #extensions }
GLPlatform >> glExtCallingConvention [
	^ self subclassResponsibility
]

{ #category : #extensions }
GLPlatform >> glExtGetProcAddress: aString [
	"Answer the function address for the given extension function"
	^self subclassResponsibility
]

{ #category : #extensions }
GLPlatform >> glExtModule [
	"GL extension functions are usually looked up per glExtGetProcAddress, so this MUST be nil. Except for Apple OpenGL where there is no glExtGetProcAddress and we bind to the actual module using a regular FFI call"
	^self openGLLibraryName

]

{ #category : #initialize }
GLPlatform >> openGLLibraryName [
	^self subclassResponsibility
]
