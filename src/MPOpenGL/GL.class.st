Class {
	#name : #GL,
	#superclass : #DynamicVariable,
	#category : 'MPOpenGL-Core'
}

{ #category : #accessing }
GL class >> activate: aContext during: aBlock [
	| oldContext |
	oldContext := GLFW value getCurrentContext.
	[ GLFW makeContextCurrent: aContext glfwWindow.
	  aBlock value ] ensure: [ GLFW value makeContextCurrent: oldContext ]
]

{ #category : #accessing }
GL class >> default [
	^ nil
]
