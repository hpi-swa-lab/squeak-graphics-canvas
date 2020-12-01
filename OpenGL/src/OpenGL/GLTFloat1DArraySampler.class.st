Class {
	#name : #GLTFloat1DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DArraySampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DArraySampler class >> declarators [

	^ #('sampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DArraySampler class >> enum [

	^ GL_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DArraySampler class >> enumName [

	^ 'SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DArraySampler class >> squeakName [

	^ 'Float1DArraySampler'
]
