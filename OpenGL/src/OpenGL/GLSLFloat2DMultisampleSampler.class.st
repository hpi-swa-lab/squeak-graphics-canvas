Class {
	#name : #GLSLFloat2DMultisampleSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleSampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleSampler class >> declarators [

	^ #('sampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleSampler class >> enum [

	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleSampler class >> enumName [

	^ 'SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat2DMultisampleSampler class >> squeakName [

	^ 'Float2DMultisampleSampler'
]
