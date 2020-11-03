Class {
	#name : #GL3DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GL3DTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_3D
]

{ #category : #binding }
GL3DTexture class >> target [

	^ GL_TEXTURE_3D
]
