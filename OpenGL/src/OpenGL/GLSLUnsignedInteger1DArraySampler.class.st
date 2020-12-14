Class {
	#name : #GLSLUnsignedInteger1DArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DArraySampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DArraySampler class >> declarators [

	^ #('usampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DArraySampler class >> squeakName [

	^ 'UnsignedInteger1DArraySampler'
]
