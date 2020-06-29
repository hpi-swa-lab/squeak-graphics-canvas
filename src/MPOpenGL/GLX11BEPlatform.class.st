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
	^GLUnsignedInt8888Rev
]

{ #category : #accessing }
GLX11BEPlatform >> texturePixelType [
	^GLUnsignedInt8888Rev
]
