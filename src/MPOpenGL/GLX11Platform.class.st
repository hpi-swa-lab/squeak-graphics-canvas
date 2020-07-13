"
I represent the generic Unix OpenGL version.
"
Class {
	#name : #GLX11Platform,
	#superclass : #GLPlatform,
	#category : #'MPOpenGL-Core'
}

{ #category : #accessing }
GLX11Platform >> imagePixelFormat32 [
	^GLBgra
]

{ #category : #accessing }
GLX11Platform >> imagePixelType32 [
	^GLUnsignedByte
]

{ #category : #initialize }
GLX11Platform >> moduleName [
	^Smalltalk osVersion = 'linux-gnu'
		ifTrue: ['libGL.so']
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
	^GL_UNSIGNED_BYTE
]
