Class {
	#name : #GLTUnsignedIntegerBufferSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerBufferSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerBufferSampler class >> declarators [

	^ #('usamplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerBufferSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerBufferSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerBufferSampler class >> squeakName [

	^ 'UnsignedIntegerBufferSampler'
]
