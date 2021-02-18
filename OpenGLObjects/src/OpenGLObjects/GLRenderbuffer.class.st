Class {
	#name : #GLRenderbuffer,
	#superclass : #GLObject,
	#category : #'OpenGLObjects-Framebuffers',
	#commentStamp : ''
}

{
	#category : #allocation,
	#timestamp : 'stlu 1/8/2021 18:10'
}
GLRenderbuffer class >> allocate: n in: anIntegerArray [

	GL genRenderbuffers: n with: anIntegerArray
]

{
	#category : #binding,
	#timestamp : 'stlu 1/8/2021 15:47'
}
GLRenderbuffer class >> bindID: anInteger to: target [

	GL bindRenderbuffer: target with: anInteger
]

{
	#category : #binding,
	#timestamp : 'stlu 1/8/2021 15:45'
}
GLRenderbuffer class >> target [

	^ GL_RENDERBUFFER
]

{
	#category : #storage,
	#timestamp : 'stlu 1/9/2021 14:15'
}
GLRenderbuffer >> initializeStorage: extent format: internalFormatEnum samples: numSamples [

	self stateAccessImp
		renderbuffer: self
		initializeStorage: extent
		format: internalFormatEnum
		samples: numSamples
]

{
	#category : #imps,
	#timestamp : 'stlu 1/9/2021 14:14'
}
GLRenderbuffer >> stateAccessImp [

	^ GLRenderbufferDirectStateAccessImp new
]
