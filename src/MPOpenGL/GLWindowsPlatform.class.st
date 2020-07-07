"
I represent the Win32 OpenGL version.
"
Class {
	#name : #GLWindowsPlatform,
	#superclass : #GLPlatform,
	#category : #'MPOpenGL-Core'
}

{ #category : #initialize }
GLWindowsPlatform >> beginFrame: aGLInstance [
	aGLInstance glPixelStorei: GL_UNPACK_LSB_FIRST with: GL_FALSE.

]

{ #category : #accessing }
GLWindowsPlatform >> imagePixelFormat32 [
	^GL_BGRA
]

{ #category : #accessing }
GLWindowsPlatform >> imagePixelType32 [
	^GL_UNSIGNED_BYTE
]

{ #category : #initialize }
GLWindowsPlatform >> moduleName [
	^'opengl32.dll'
]

{ #category : #accessing }
GLWindowsPlatform >> textureInternalFormat [
	^GL_RGBA
]

{ #category : #accessing }
GLWindowsPlatform >> texturePixelFormat [
	^GL_BGRA
]

{ #category : #accessing }
GLWindowsPlatform >> texturePixelType [
	^GL_UNSIGNED_BYTE
]
