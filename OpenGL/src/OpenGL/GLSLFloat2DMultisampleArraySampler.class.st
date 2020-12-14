Class {
	#name : #GLSLFloat2DMultisampleArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleArraySampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleArraySampler class >> declarators [

	^ #('sampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleArraySampler class >> enum [

	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleArraySampler class >> enumName [

	^ 'SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleArraySampler class >> squeakName [

	^ 'Float2DMultisampleArraySampler'
]
