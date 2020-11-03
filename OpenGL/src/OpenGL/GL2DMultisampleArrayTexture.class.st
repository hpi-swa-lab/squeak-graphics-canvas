Class {
	#name : #GL2DMultisampleArrayTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL2DMultisampleArrayTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_2D_MULTISAMPLE
]

{ #category : #binding }
GL2DMultisampleArrayTexture class >> target [

	^ GL_TEXTURE_2D_MULTISAMPLE_ARRAY
]
