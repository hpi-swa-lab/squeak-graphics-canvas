Class {
	#name : #GLTFloat1DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DArraySampler class >> declarators [

	^ #('sampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DArraySampler class >> enum [

	^ GL_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DArraySampler class >> enumName [

	^ 'SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DArraySampler class >> squeakName [

	^ 'Float1DArraySampler'
]
