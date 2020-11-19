Class {
	#name : #GLUniformBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLUniformBuffer class >> bindingEnum [

	^ GL_UNIFORM_BUFFER_BINDING
]

{ #category : #binding }
GLUniformBuffer class >> target [

	^ GL_UNIFORM_BUFFER
]
