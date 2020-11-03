Class {
	#name : #GLPixelUnpackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLPixelUnpackBuffer class >> bindingEnum [

	^ GL_PIXEL_UNPACK_BUFFER_BINDING
]

{ #category : #binding }
GLPixelUnpackBuffer class >> target [

	^ GL_PIXEL_UNPACK_BUFFER
]
