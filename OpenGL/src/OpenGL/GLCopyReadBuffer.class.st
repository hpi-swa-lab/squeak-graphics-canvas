Class {
	#name : #GLCopyReadBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLCopyReadBuffer class >> bindingEnum [

	^ GL_COPY_READ_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLCopyReadBuffer class >> target [

	^ GL_COPY_READ_BUFFER
]
