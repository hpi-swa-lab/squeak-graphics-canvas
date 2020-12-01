Class {
	#name : #GL2DArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:37'
}
GL2DArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D_ARRAY
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL2DArrayTexture class >> target [

	^ GL_TEXTURE_2D_ARRAY
]
