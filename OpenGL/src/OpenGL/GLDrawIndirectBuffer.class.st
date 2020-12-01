Class {
	#name : #GLDrawIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLDrawIndirectBuffer class >> bindingEnum [

	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLDrawIndirectBuffer class >> target [

	^ GL_DRAW_INDIRECT_BUFFER
]
