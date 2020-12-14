Class {
	#name : #GLSLUnsignedInteger1DSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DSampler class >> declarators [

	^ #('usampler1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger1DSampler class >> squeakName [

	^ 'UnsignedInteger1DSampler'
]
