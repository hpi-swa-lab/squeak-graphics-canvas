Class {
	#name : #GLCopyWriteBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:59'
}
GLCopyWriteBuffer class >> bindingEnum [

	^ GL_COPY_WRITE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLCopyWriteBuffer class >> target [

	^ GL_COPY_WRITE_BUFFER
]
