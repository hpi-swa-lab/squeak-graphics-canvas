Class {
	#name : #GLPixelPackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers',
	#commentStamp : ''
}

{
	#category : #binding,
	#timestamp : ''
}
GLPixelPackBuffer class >> bindingEnum [

	^ GL_PIXEL_PACK_BUFFER_BINDING
]

{
	#category : #binding,
	#timestamp : ''
}
GLPixelPackBuffer class >> target [

	^ GL_PIXEL_PACK_BUFFER
]
