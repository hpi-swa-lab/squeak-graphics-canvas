Class {
	#name : #GLShaderStorageBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLShaderStorageBuffer class >> bindingEnum [

	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLShaderStorageBuffer class >> target [

	^ GL_SHADER_STORAGE_BUFFER
]
