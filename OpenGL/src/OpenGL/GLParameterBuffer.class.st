Class {
	#name : #GLParameterBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLParameterBuffer class >> bindingEnum [

	^ GL_PARAMETER_BUFFER_BINDING
]

{ #category : #binding }
GLParameterBuffer class >> target [

	^ GL_PARAMETER_BUFFER
]
