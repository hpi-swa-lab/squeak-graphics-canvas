Class {
	#name : #GLTFloatBufferSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatBufferSampler class >> declarators [

	^ #('samplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatBufferSampler class >> enum [

	^ GL_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatBufferSampler class >> enumName [

	^ 'SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatBufferSampler class >> squeakName [

	^ 'FloatBufferSampler'
]
