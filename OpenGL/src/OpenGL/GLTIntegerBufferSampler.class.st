Class {
	#name : #GLTIntegerBufferSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerBufferSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerBufferSampler class >> declarators [

	^ #('isamplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerBufferSampler class >> enum [

	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerBufferSampler class >> enumName [

	^ 'INT_SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerBufferSampler class >> squeakName [

	^ 'IntegerBufferSampler'
]
