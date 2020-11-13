Class {
	#name : #GL2DMultisampleArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:37'
}
GL2DMultisampleArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:42'
}
GL2DMultisampleArrayTexture class >> target [

	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]
