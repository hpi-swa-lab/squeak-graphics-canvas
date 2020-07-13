"
I represent the big endian Unix OpenGL version.
"
Class {
	#name : #GLX11BEPlatform,
	#superclass : #GLX11Platform,
	#category : #'MPOpenGL-Core'
}

{ #category : #accessing }
GLX11BEPlatform >> imagePixelType32 [
	^GL_UNSIGNED_INT_8_8_8_8_REV
]

{ #category : #accessing }
GLX11BEPlatform >> texturePixelType [
	^GL_UNSIGNED_INT_8_8_8_8_REV
]
