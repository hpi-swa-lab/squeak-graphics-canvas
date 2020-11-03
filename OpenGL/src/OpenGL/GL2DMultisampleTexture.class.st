Class {
	#name : #GL2DMultisampleTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL2DMultisampleTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{ #category : #binding }
GL2DMultisampleTexture class >> target [

	^ GL_TEXTURE_2D_MULTISAMPLE
]
