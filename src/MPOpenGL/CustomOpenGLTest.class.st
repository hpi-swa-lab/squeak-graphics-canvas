Class {
	#name : #CustomOpenGLTest,
	#superclass : #CustomOpenGLParentTestCase,
	#category : 'MPOpenGL-Test'
}

{ #category : #'before each' }
CustomOpenGLTest >> setUp [
	self setUpWindow 
]

{ #category : #'before each' }
CustomOpenGLTest >> setUpWindow [
	ogl := GL3_3 newInGLFW: (Rectangle origin: 0@0 extent: 640@480).
	GLFW makeContextCurrent: ogl glfwWindow.

]

{ #category : #'after each' }
CustomOpenGLTest >> tearDown [
	self tearDownWindow
]

{ #category : #'after each' }
CustomOpenGLTest >> tearDownWindow [
	ogl destroy.
]
