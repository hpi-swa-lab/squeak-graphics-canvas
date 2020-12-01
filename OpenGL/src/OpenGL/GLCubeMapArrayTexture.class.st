Class {
	#name : #GLCubeMapArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLCubeMapArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{
	#category : #binding,
	#timestamp : ''
}
GLCubeMapArrayTexture class >> target [

	^ GL_TEXTURE_CUBE_MAP_ARRAY
]
