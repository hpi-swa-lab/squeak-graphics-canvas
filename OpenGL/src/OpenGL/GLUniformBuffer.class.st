Class {
	#name : #GLUniformBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:01'
}
GLUniformBuffer class >> bindingEnum [

	^ GL_UNIFORM_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:04'
}
GLUniformBuffer class >> target [

	^ GL_UNIFORM_BUFFER
]
