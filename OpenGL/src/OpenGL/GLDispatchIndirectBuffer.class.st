Class {
	#name : #GLDispatchIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLDispatchIndirectBuffer class >> bindingEnum [

	^ GL_DISPATCH_INDIRECT_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLDispatchIndirectBuffer class >> target [

	^ GL_DISPATCH_INDIRECT_BUFFER
]
