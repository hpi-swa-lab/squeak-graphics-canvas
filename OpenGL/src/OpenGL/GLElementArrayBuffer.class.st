Class {
	#name : #GLElementArrayBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 11:56'
}
GLElementArrayBuffer class >> bindingEnum [

	^ GL_ELEMENT_ARRAY_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLElementArrayBuffer class >> target [

	^ GL_ELEMENT_ARRAY_BUFFER
]
