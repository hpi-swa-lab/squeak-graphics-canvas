Class {
	#name : #GLDisplayFrameBuffer,
	#superclass : #GLFrameBuffer,
	#category : #'OpenGL-Wrappers-Framebuffers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:50'
}
GLDisplayFrameBuffer class >> allocate [

	^ 0
]

{
	#category : #allocation,
	#timestamp : 'stlu 11/30/2020 19:51'
}
GLDisplayFrameBuffer class >> allocate: n in: anIntegerArray [

	anIntegerArray atAllPut: 0
]
