Class {
	#name : #GLTUnsignedInteger1DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DSampler class >> declarators [

	^ #('usampler1D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DSampler class >> squeakName [

	^ 'UnsignedInteger1DSampler'
]
