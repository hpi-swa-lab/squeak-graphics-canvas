Class {
	#name : #GLSLFloat1DArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DArraySampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DArraySampler class >> declarators [

	^ #('sampler1DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DArraySampler class >> enum [

	^ GL_SAMPLER_1D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DArraySampler class >> enumName [

	^ 'SAMPLER_1D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DArraySampler class >> squeakName [

	^ 'Float1DArraySampler'
]
