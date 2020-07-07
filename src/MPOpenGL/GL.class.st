Class {
	#name : #GL,
	#superclass : #DynamicVariable,
	#category : #'MPOpenGL-Core'
}

{ #category : #accessing }
GL class >> activate: aContext during: aBlock [
	| oldContext |
	oldContext := GLFW getCurrentContext.
	[ GLFW makeContextCurrent: aContext glfwWindow.
	  aBlock value ] ensure: [ GLFW makeContextCurrent: oldContext ]
]

{ #category : #accessing }
GL class >> default [
	^ nil
]
