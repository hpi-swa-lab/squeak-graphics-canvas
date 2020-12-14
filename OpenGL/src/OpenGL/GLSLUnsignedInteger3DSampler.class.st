Class {
	#name : #GLSLUnsignedInteger3DSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger3DSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger3DSampler class >> declarators [

	^ #('usampler3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger3DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger3DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger3DSampler class >> squeakName [

	^ 'UnsignedInteger3DSampler'
]
