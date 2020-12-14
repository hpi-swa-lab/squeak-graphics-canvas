Class {
	#name : #GLSLUnsignedInteger2DArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DArraySampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DArraySampler class >> declarators [

	^ #('usampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DArraySampler class >> squeakName [

	^ 'UnsignedInteger2DArraySampler'
]
