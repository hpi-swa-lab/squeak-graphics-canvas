Class {
	#name : #GLSLFloat2DArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DArraySampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DArraySampler class >> declarators [

	^ #('sampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DArraySampler class >> enum [

	^ GL_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DArraySampler class >> enumName [

	^ 'SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DArraySampler class >> squeakName [

	^ 'Float2DArraySampler'
]
