Class {
	#name : #GLTextureBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:01'
}
GLTextureBuffer class >> bindingEnum [

	^ GL_TEXTURE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLTextureBuffer class >> target [

	^ GL_TEXTURE_BUFFER
]
