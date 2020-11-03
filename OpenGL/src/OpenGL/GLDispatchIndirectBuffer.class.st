Class {
	#name : #GLDispatchIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLDispatchIndirectBuffer class >> bindingEnum [

	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{ #category : #binding }
GLDispatchIndirectBuffer class >> target [

	^ GL_DISPATCH_INDIRECT_BUFFER
]
