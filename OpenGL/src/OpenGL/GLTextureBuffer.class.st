Class {
	#name : #GLTextureBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLTextureBuffer class >> bindingEnum [

	^ GL_TEXTURE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLTextureBuffer class >> target [

	^ GL_TEXTURE_BUFFER
]
