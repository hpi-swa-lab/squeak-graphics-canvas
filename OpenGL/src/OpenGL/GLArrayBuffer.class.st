Class {
	#name : #GLArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLArrayBuffer class >> bindingEnum [

	^ GL_ARRAY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLArrayBuffer class >> target [

	^ GL_ARRAY_BUFFER
]
