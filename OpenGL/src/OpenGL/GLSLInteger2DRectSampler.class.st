Class {
	#name : #GLSLInteger2DRectSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DRectSampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DRectSampler class >> declarators [

	^ #('isampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DRectSampler class >> enum [

	^ GL_INT_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DRectSampler class >> enumName [

	^ 'INT_SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DRectSampler class >> squeakName [

	^ 'Integer2DRectSampler'
]
