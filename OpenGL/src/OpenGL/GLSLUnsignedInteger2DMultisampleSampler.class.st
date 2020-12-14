Class {
	#name : #GLSLUnsignedInteger2DMultisampleSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleSampler class >> declarators [

	^ #('usampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleSampler class >> squeakName [

	^ 'UnsignedInteger2DMultisampleSampler'
]
