Class {
	#name : #GLCubeMapTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLCubeMapTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{
	#category : #binding,
	#timestamp : ''
}
GLCubeMapTexture class >> target [

	^ GL_TEXTURE_CUBE_MAP
]
