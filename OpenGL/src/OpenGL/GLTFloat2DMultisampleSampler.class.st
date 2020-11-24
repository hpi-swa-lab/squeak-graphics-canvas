Class {
	#name : #GLTFloat2DMultisampleSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleSampler class >> declarators [

	^ #('sampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleSampler class >> enum [

	^ GL_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleSampler class >> enumName [

	^ 'SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleSampler class >> squeakName [

	^ 'Float2DMultisampleSampler'
]
