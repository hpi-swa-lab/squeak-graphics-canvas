Class {
	#name : #GLShaderStorageBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:01'
}
GLShaderStorageBuffer class >> bindingEnum [

	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLShaderStorageBuffer class >> target [

	^ GL_SHADER_STORAGE_BUFFER
]
