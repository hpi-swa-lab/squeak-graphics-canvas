Class {
	#name : #GL2DMultisampleTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:43'
}
GL2DMultisampleTexture class >> target [

	^ GL_TEXTURE_2D_MULTISAMPLE
]
