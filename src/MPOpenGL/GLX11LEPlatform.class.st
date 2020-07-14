"
I represent the little endian Unix OpenGL version.
"
Class {
	#name : #GLX11LEPlatform,
	#superclass : #GLX11Platform,
	#category : #'MPOpenGL-Core'
}

{ #category : #intitialize }
GLX11LEPlatform >> beginFrame: aGLInstance [
	aGLInstance glPixelStorei: GL_UNPACK_LSB_FIRST with: GL_FALSE
]
