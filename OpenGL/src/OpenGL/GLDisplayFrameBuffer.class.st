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

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/3/2020 19:28'
}
GLDisplayFrameBuffer class >> create [

	^ GL userData at: self ifAbsentPut: [super create]
]

{
	#category : #binding,
	#timestamp : 'stlu 12/3/2020 19:26'
}
GLDisplayFrameBuffer class >> initializeBindings [

	| display |
	display := GL userData at: self put: self create.
	GL rememberBinding: GL_DRAW_FRAMEBUFFER as: display.
	GL rememberBinding: GL_READ_FRAMEBUFFER as: display
]
