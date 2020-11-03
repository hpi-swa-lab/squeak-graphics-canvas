Class {
	#name : #GLElementArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLElementArrayBuffer class >> bindingEnum [

	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{ #category : #binding }
GLElementArrayBuffer class >> target [

	^ GL_ELEMENT_ARRAY_BUFFER
]
