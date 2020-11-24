Class {
	#name : #GLTFloat2DMultisampleArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleArraySampler class >> declarators [

	^ #('sampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleArraySampler class >> enum [

	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleArraySampler class >> enumName [

	^ 'SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DMultisampleArraySampler class >> squeakName [

	^ 'Float2DMultisampleArraySampler'
]
