Class {
	#name : #GLShaderStorageBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLShaderStorageBuffer class >> bindingEnum [

	^ GL_SHADER_STORAGE_BUFFER_BINDING
]

{ #category : #binding }
GLShaderStorageBuffer class >> target [

	^ GL_SHADER_STORAGE_BUFFER
]
