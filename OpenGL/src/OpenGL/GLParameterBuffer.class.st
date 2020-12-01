Class {
	#name : #GLParameterBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLParameterBuffer class >> bindingEnum [

	^ GL_PARAMETER_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLParameterBuffer class >> target [

	^ GL_PARAMETER_BUFFER
]
