Class {
	#name : #GLTInteger1DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DArraySampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DArraySampler class >> declarators [

	^ #('isampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DArraySampler class >> enum [

	^ GL_INT_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DArraySampler class >> enumName [

	^ 'INT_SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DArraySampler class >> squeakName [

	^ 'Integer1DArraySampler'
]
