Class {
	#name : #GL2DMultisampleArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL2DMultisampleArrayTexture class >> target [

	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]
