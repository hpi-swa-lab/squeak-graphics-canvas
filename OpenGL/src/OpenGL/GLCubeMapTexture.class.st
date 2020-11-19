Class {
	#name : #GLCubeMapTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GLCubeMapTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_CUBE_MAP
]

{ #category : #binding }
GLCubeMapTexture class >> target [

	^ GL_TEXTURE_CUBE_MAP
]
