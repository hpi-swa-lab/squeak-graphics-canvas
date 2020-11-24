Class {
	#name : #GLTIntegerBufferSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerBufferSampler class >> declarators [

	^ #('isamplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerBufferSampler class >> enum [

	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerBufferSampler class >> enumName [

	^ 'INT_SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerBufferSampler class >> squeakName [

	^ 'IntegerBufferSampler'
]
