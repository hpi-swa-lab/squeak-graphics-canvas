Class {
	#name : #GLBufferTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GLBufferTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_BUFFER
]

{ #category : #binding }
GLBufferTexture class >> target [

	^ GL_TEXTURE_BUFFER
]
