Class {
	#name : #GLSLFloat2DRectSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DRectSampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DRectSampler class >> declarators [

	^ #('sampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DRectSampler class >> enum [

	^ GL_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DRectSampler class >> enumName [

	^ 'SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DRectSampler class >> squeakName [

	^ 'Float2DRectSampler'
]
