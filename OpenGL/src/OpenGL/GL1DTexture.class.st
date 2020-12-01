Class {
	#name : #GL1DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GL1DTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_1D
]

{
	#category : #binding,
	#timestamp : ''
}
GL1DTexture class >> target [

	^ GL_TEXTURE_1D
]
