Class {
	#name : #GLBufferTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLBufferTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #binding,
	#timestamp : ''
}
GLBufferTexture class >> target [

	^ GL_TEXTURE_BUFFER
]
