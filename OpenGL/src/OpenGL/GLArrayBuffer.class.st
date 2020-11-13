Class {
	#name : #GLArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:55'
}
GLArrayBuffer class >> bindingEnum [

	^ GL_ARRAY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLArrayBuffer class >> target [

	^ GL_ARRAY_BUFFER
]
