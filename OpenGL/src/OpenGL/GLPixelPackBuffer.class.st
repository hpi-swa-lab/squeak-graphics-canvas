Class {
	#name : #GLPixelPackBuffer,
	#superclass : #GLBuffer,
	#category : #'OpenGL-Wrappers-Buffers'
}

{ #category : #binding }
GLPixelPackBuffer class >> bindingEnum [

	^ GL_PIXEL_PACK_BUFFER_BINDING
]

{ #category : #binding }
GLPixelPackBuffer class >> target [

	^ GL_PIXEL_PACK_BUFFER
]
