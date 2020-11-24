Class {
	#name : #GLTUnsignedInteger1DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DArraySampler class >> declarators [

	^ #('usampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DArraySampler class >> squeakName [

	^ 'UnsignedInteger1DArraySampler'
]
