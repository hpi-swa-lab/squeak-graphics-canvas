"
GL version 4.2 or higher
"
Class {
	#name : #GLAtomicCounterBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLAtomicCounterBuffer class >> bindingEnum [

	^ GL_ATOMIC_COUNTER_BUFFER_BINDING
]

{ #category : #binding }
GLAtomicCounterBuffer class >> target [

	^ GL_ATOMIC_COUNTER_BUFFER
]
