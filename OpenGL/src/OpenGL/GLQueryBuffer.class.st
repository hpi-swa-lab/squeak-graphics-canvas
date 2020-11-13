Class {
	#name : #GLQueryBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:00'
}
GLQueryBuffer class >> bindingEnum [

	^ GL_QUERY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLQueryBuffer class >> target [

	^ GL_QUERY_BUFFER
]
