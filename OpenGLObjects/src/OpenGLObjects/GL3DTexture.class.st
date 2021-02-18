Class {
	#name : #GL3DTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:43'
}
GL3DTexture class >> target [

	^ GL_TEXTURE_3D
]
