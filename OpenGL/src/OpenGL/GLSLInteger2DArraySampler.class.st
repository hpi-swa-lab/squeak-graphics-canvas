Class {
	#name : #GLSLInteger2DArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DArraySampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DArraySampler class >> declarators [

	^ #('isampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DArraySampler class >> enum [

	^ GL_INT_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DArraySampler class >> enumName [

	^ 'INT_SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DArraySampler class >> squeakName [

	^ 'Integer2DArraySampler'
]
