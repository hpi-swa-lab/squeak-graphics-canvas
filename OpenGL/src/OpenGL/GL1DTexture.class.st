Class {
	#name : #GL1DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL1DTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_1D
]

{ #category : #binding }
GL1DTexture class >> target [

	^ GL_TEXTURE_1D
]
