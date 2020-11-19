Class {
	#name : #GLCopyWriteBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLCopyWriteBuffer class >> bindingEnum [

	^ GL_COPY_WRITE_BUFFER_BINDING
]

{ #category : #binding }
GLCopyWriteBuffer class >> target [

	^ GL_COPY_WRITE_BUFFER
]
