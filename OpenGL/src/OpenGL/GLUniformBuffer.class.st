Class {
	#name : #GLUniformBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLUniformBuffer class >> bindingEnum [

	^ GL_UNIFORM_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLUniformBuffer class >> target [

	^ GL_UNIFORM_BUFFER
]
