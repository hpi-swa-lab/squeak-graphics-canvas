Class {
	#name : #GLSLInteger2DMultisampleSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleSampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleSampler class >> declarators [

	^ #('isampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleSampler class >> enum [

	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleSampler class >> enumName [

	^ 'INT_SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger2DMultisampleSampler class >> squeakName [

	^ 'Integer2DMultisampleSampler'
]
