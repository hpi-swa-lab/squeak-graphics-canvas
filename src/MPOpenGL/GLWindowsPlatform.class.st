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
