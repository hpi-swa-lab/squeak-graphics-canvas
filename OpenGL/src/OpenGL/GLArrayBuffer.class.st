Class {
	#name : #GLArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLArrayBuffer class >> bindingEnum [

	^ GL_ARRAY_BUFFER_BINDING
]

{ #category : #binding }
GLArrayBuffer class >> target [

	^ GL_ARRAY_BUFFER
]
