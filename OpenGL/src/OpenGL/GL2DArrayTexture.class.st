Class {
	#name : #GL2DArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL2DArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D_ARRAY
]

{ #category : #binding }
GL2DArrayTexture class >> target [

	^ GL_TEXTURE_2D_ARRAY
]
