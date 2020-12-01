Class {
	#name : #GL3DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GL3DTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_3D
]

{
	#category : #binding,
	#timestamp : ''
}
GL3DTexture class >> target [

	^ GL_TEXTURE_3D
]
