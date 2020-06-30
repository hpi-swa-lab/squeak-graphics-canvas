"
I represent the generic Unix OpenGL version.
"
Class {
	#name : #GLX11Platform,
	#superclass : #GLPlatform,
	#category : #'MPOpenGL-Core'
}

{ #category : #extensions }
GLX11Platform >> glExtCallingConvention [
	"Answer the calling convention for extension functions"
	^ExternalFunction callTypeCDecl
]

{ #category : #accessing }
GLX11Platform >> glExtGetProcAddress: aString [
	"Answer the function address for the given extension function"
	<cdecl: ulong 'glXGetProcAddressARB' (char*) module: 'GL'>
	^self externalCallFailed
]

{ #category : #accessing }
GLX11Platform >> imagePixelFormat32 [
	^GLBgra
]

{ #category : #accessing }
GLX11Platform >> imagePixelType32 [
	^GLUnsignedByte
]

{ #category : #initialize }
GLX11Platform >> openGLLibraryName [
	^Smalltalk osVersion = 'linux-gnu'
		ifTrue: ['libGL.so.1']
		ifFalse: ['GL']

]

{ #category : #accessing }
GLX11Platform >> textureInternalFormat [
	^GLRgba
]

{ #category : #accessing }
GLX11Platform >> texturePixelFormat [
	^GLBgra
]

{ #category : #accessing }
GLX11Platform >> texturePixelType [
	^GLUnsignedByte
]
