"
I represent the Mac OS X OpenGL version.
"
Class {
	#name : #GLMacOSPlatform,
	#superclass : #GLPlatform,
	#category : #'MPOpenGL-Core'
}

{ #category : #accessing }
GLMacOSPlatform >> imagePixelFormat32 [
	^GL_BGRA
]

{ #category : #accessing }
GLMacOSPlatform >> imagePixelType32 [
	^GL_UNSIGNED_INT_8_8_8_8_REV
]

{ #category : #initialize }
GLMacOSPlatform >> moduleName [
	^'OpenGL.framework'
]

{ #category : #accessing }
GLMacOSPlatform >> textureInternalFormat [
	^GL_RGBA
]

{ #category : #accessing }
GLMacOSPlatform >> texturePixelFormat [
	^GL_BGRA
]

{ #category : #accessing }
GLMacOSPlatform >> texturePixelType [
	^GL_UNSIGNED_INT_8_8_8_8_REV
]
