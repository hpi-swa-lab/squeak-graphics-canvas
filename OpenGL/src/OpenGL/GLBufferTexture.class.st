Class {
	#name : #GLBufferTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:40'
}
GLBufferTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_BUFFER
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:43'
}
GLBufferTexture class >> target [

	^ GL_TEXTURE_BUFFER
]
