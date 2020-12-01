Class {
	#name : #GLRectangleTexture,
	#superclass : #GLTexture,
	#category : #'OpenGL-Wrappers-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLRectangleTexture class >> bindingEnum [

	^ GL_TEXTURE_BINDING_RECTANGLE
]

{
	#category : #binding,
	#timestamp : ''
}
GLRectangleTexture class >> target [

	^ GL_TEXTURE_RECTANGLE
]
