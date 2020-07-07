"
I represent the little endian Unix OpenGL version.
"
Class {
	#name : #GLX11LEPlatform,
	#superclass : #GLX11Platform,
	#category : 'MPOpenGL-Core'
}

{ #category : #intitialize }
GLX11LEPlatform >> beginFrame: aGLInstance [
	aGLInstance glPixelStorei: GLUnpackLsbFirst with: 0
]

{ #category : #accessing }
GLX11LEPlatform >> imagePixelType32 [
	^GLUnsignedByte
]

{ #category : #accessing }
GLX11LEPlatform >> texturePixelType [
	^GLUnsignedByte
]
