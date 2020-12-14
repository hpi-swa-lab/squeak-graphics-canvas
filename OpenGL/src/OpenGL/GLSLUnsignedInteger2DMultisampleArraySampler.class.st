Class {
	#name : #GLSLUnsignedInteger2DMultisampleArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleArraySampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleArraySampler class >> declarators [

	^ #('usampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedInteger2DMultisampleArraySampler class >> squeakName [

	^ 'UnsignedInteger2DMultisampleArraySampler'
]
