Class {
	#name : #GLCopyReadBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLCopyReadBuffer class >> bindingEnum [

	^ GL_COPY_READ_BUFFER_BINDING
]

{ #category : #binding }
GLCopyReadBuffer class >> target [

	^ GL_COPY_READ_BUFFER
]