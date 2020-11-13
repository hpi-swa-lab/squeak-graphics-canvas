Class {
	#name : #GLCopyReadBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:59'
}
GLCopyReadBuffer class >> bindingEnum [

	^ GL_COPY_READ_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLCopyReadBuffer class >> target [

	^ GL_COPY_READ_BUFFER
]
