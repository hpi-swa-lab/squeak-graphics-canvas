Class {
	#name : #GLDrawIndirectBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:00'
}
GLDrawIndirectBuffer class >> bindingEnum [

	^ GL_DRAW_INDIRECT_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:02'
}
GLDrawIndirectBuffer class >> target [

	^ GL_DRAW_INDIRECT_BUFFER
]
