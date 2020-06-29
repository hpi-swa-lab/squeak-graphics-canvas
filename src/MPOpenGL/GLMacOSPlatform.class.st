"
I represent the Mac OS X OpenGL version.
"
Class {
	#name : #GLMacOSPlatform,
	#superclass : #GLPlatform,
	#category : #'MPOpenGL-Core'
}

{ #category : #accessing }
GLMacOSPlatform >> glExtCallingConvention [
	"Answer the calling convention for extension functions"
	^ExternalFunction callTypeAPI
]

{ #category : #accessing }
GLMacOSPlatform >> glExtGetProcAddress: aString [
	"AGL does not support dynamic lookup of extension functions. We lookup in glExtModule instead"
	^nil
]

{ #category : #accessing }
GLMacOSPlatform >> glExtModule [
	"GL extension functions are usually looked up per glExtGetProcAddress, so this MUST be nil. Except for Apple OpenGL where there is no glExtGetProcAddress and we bind to the actual module using a regular FFI call"
	^self openGLLibraryName

]

{ #category : #accessing }
GLMacOSPlatform >> imagePixelFormat32 [
	^GLBgra
]

{ #category : #accessing }
GLMacOSPlatform >> imagePixelType32 [
	^GLUnsignedInt8888Rev
]

{ #category : #initialize }
GLMacOSPlatform >> openGLLibraryName [
	^'OpenGL.framework'
]

{ #category : #accessing }
GLMacOSPlatform >> textureInternalFormat [
	^GLRgba
]

{ #category : #accessing }
GLMacOSPlatform >> texturePixelFormat [
	^GLBgra
]

{ #category : #accessing }
GLMacOSPlatform >> texturePixelType [
	^GLUnsignedInt8888Rev
]
