"
I represent the Win32 OpenGL version.
"
Class {
	#name : #GLWindowsPlatform,
	#superclass : #GLPlatform,
	#category : 'MPOpenGL-Core'
}

{ #category : #initialize }
GLWindowsPlatform >> beginFrame: aGLInstance [
	aGLInstance glPixelStorei: GLUnpackLsbFirst with: 0.

]

{ #category : #accessing }
GLWindowsPlatform >> glExtCallingConvention [
	"Answer the calling convention for extension functions"
	^ExternalFunction callTypeAPI
]

{ #category : #accessing }
GLWindowsPlatform >> glExtGetProcAddress: aString [
	"Answer the function address for the given extension function"
	<apicall: ulong 'wglGetProcAddress' (char*) module: 'opengl32.dll'>
	^self externalCallFailed
]

{ #category : #accessing }
GLWindowsPlatform >> imagePixelFormat32 [
	^GLBgra
]

{ #category : #accessing }
GLWindowsPlatform >> imagePixelType32 [
	^GLUnsignedByte
]

{ #category : #initialize }
GLWindowsPlatform >> openGLLibraryName [
	^'opengl32.dll'
]

{ #category : #accessing }
GLWindowsPlatform >> textureInternalFormat [
	^GLRgba
]

{ #category : #accessing }
GLWindowsPlatform >> texturePixelFormat [
	^GLBgra
]

{ #category : #accessing }
GLWindowsPlatform >> texturePixelType [
	^GLUnsignedByte
]
