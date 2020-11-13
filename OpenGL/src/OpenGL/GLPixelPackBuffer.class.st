Class {
	#name : #GLPixelPackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:00'
}
GLPixelPackBuffer class >> bindingEnum [

	^ GL_PIXEL_PACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : 'stlu 10/29/2020 12:03'
}
GLPixelPackBuffer class >> target [

	^ GL_PIXEL_PACK_BUFFER
]
