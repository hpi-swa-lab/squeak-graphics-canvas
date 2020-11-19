Class {
	#name : #GLTextureBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLTextureBuffer class >> bindingEnum [

	^ GL_TEXTURE_BUFFER_BINDING
]

{ #category : #binding }
GLTextureBuffer class >> target [

	^ GL_TEXTURE_BUFFER
]
