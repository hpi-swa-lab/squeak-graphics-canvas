Class {
	#name : #GLCubeMapTexture,
	#superclass : #GLTexture,
	#category : #'OpenGLObjects-Textures',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 00:43'
}
GLCubeMapTexture class >> target [

	^ GL_TEXTURE_CUBE_MAP
]
