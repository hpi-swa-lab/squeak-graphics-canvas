Class {
	#name : #GLCopyWriteBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLCopyWriteBuffer class >> bindingEnum [

	^ GL_COPY_WRITE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLCopyWriteBuffer class >> target [

	^ GL_COPY_WRITE_BUFFER
]
