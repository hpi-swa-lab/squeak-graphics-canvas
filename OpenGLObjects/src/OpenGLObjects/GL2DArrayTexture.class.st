Class {
	#name : #GL2DArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL2DArrayTexture class >> target [

	^ GL_TEXTURE_2D_ARRAY
]
