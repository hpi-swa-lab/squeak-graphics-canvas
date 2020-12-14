Class {
	#name : #GLSLInteger2DMultisampleArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleArraySampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleArraySampler class >> declarators [

	^ #('isampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleArraySampler class >> enum [

	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleArraySampler class >> enumName [

	^ 'INT_SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleArraySampler class >> squeakName [

	^ 'Integer2DMultisampleArraySampler'
]
