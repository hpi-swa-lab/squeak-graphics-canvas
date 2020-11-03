Class {
	#name : #GLCubeMapArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GLCubeMapArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_CUBE_MAP_ARRAY
]

{ #category : #binding }
GLCubeMapArrayTexture class >> target [

	^ GL_TEXTURE_CUBE_MAP_ARRAY
]
