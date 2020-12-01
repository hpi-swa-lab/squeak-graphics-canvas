Class {
	#name : #GLTFloatBufferSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatBufferSampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatBufferSampler class >> declarators [

	^ #('samplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatBufferSampler class >> enum [

	^ GL_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatBufferSampler class >> enumName [

	^ 'SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatBufferSampler class >> squeakName [

	^ 'FloatBufferSampler'
]
