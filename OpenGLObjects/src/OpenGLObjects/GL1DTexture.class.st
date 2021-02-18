Class {
	#name : #GL1DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL1DTexture class >> target [

	^ GL_TEXTURE_1D
]
