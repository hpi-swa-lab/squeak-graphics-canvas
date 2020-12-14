Class {
	#name : #GLSLUnsignedInteger2DSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DSampler class >> declarators [

	^ #('usampler2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DSampler class >> squeakName [

	^ 'UnsignedInteger2DSampler'
]
