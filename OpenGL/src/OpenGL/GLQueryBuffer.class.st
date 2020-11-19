Class {
	#name : #GLQueryBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLQueryBuffer class >> bindingEnum [

	^ GL_QUERY_BUFFER_BINDING
]

{ #category : #binding }
GLQueryBuffer class >> target [

	^ GL_QUERY_BUFFER
]
