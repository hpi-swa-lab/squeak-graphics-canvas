Class {
	#name : #GLPixelUnpackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLPixelUnpackBuffer class >> bindingEnum [

	^ GL_PIXEL_UNPACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLPixelUnpackBuffer class >> target [

	^ GL_PIXEL_UNPACK_BUFFER
]
