Class {
	#name : #GLTInteger2DMultisampleArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleArraySampler class >> declarators [

	^ #('isampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleArraySampler class >> enum [

	^ GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleArraySampler class >> enumName [

	^ 'INT_SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleArraySampler class >> squeakName [

	^ 'Integer2DMultisampleArraySampler'
]
