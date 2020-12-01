Class {
	#name : #GLElementArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLElementArrayBuffer class >> bindingEnum [

	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLElementArrayBuffer class >> target [

	^ GL_ELEMENT_ARRAY_BUFFER
]
