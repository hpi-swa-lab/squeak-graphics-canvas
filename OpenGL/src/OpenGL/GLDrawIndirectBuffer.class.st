Class {
	#name : #GLDrawIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLDrawIndirectBuffer class >> bindingEnum [

	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{ #category : #binding }
GLDrawIndirectBuffer class >> target [

	^ GL_DRAW_INDIRECT_BUFFER
]
