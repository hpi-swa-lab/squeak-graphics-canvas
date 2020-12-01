Class {
	#name : #GLTUnsignedInteger1DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DArraySampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DArraySampler class >> declarators [

	^ #('usampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger1DArraySampler class >> squeakName [

	^ 'UnsignedInteger1DArraySampler'
]
