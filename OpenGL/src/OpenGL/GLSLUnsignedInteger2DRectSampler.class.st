Class {
	#name : #GLSLUnsignedInteger2DRectSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DRectSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DRectSampler class >> declarators [

	^ #('usampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DRectSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DRectSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DRectSampler class >> squeakName [

	^ 'UnsignedInteger2DRectSampler'
]
