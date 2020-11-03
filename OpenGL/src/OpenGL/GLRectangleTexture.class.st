Class {
	#name : #GLRectangleTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures'
}

{ #category : #binding }
GLRectangleTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_RECTANGLE
]

{ #category : #binding }
GLRectangleTexture class >> target [

	^ GL_TEXTURE_RECTANGLE
]
