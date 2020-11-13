Class {
	#name : #GLParameterBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:59'
}
GLParameterBuffer class >> bindingEnum [

	^ GL_PARAMETER_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:58'
}
GLParameterBuffer class >> target [

	^ GL_PARAMETER_BUFFER
]
