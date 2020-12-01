Class {
	#name : #GLQueryBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLQueryBuffer class >> bindingEnum [

	^ GL_QUERY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLQueryBuffer class >> target [

	^ GL_QUERY_BUFFER
]
