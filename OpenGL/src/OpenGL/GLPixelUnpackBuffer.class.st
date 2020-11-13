Class {
	#name : #GLPixelUnpackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:00'
}
GLPixelUnpackBuffer class >> bindingEnum [

	^ GL_PIXEL_UNPACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLPixelUnpackBuffer class >> target [

	^ GL_PIXEL_UNPACK_BUFFER
]
