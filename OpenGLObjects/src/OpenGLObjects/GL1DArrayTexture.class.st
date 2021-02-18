Class {
	#name : #GL1DArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL1DArrayTexture class >> target [

	^ GL_TEXTURE_1D_ARRAY
]
