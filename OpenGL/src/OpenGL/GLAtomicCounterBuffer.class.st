"
GL version 4.2 or higher
"
Class {
	#name : #GLAtomicCounterBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : 'stlu 10/29/2020 12:54'
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:59'
}
GLAtomicCounterBuffer class >> bindingEnum [

	^ GL_ATOMIC_COUNTER_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLAtomicCounterBuffer class >> target [

	^ GL_ATOMIC_COUNTER_BUFFER
]
