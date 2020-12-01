Class {
	#name : #GL1DArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:36'
}
GL1DArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_1D_ARRAY
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL1DArrayTexture class >> target [

	^ GL_TEXTURE_1D_ARRAY
]
