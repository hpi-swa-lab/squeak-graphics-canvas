Class {
	#name : #GLDispatchIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:59'
}
GLDispatchIndirectBuffer class >> bindingEnum [

	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLDispatchIndirectBuffer class >> target [

	^ GL_DISPATCH_INDIRECT_BUFFER
]
