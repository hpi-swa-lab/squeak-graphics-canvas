Class {
	#name : #GLRectangleTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:43'
}
GLRectangleTexture class >> target [

	^ GL_TEXTURE_RECTANGLE
]
