Class {
	#name : #GLTUnsignedInteger2DMultisampleArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleArraySampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DMultisampleArraySampler class >> declarators [

	^ #('usampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DMultisampleArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DMultisampleArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DMultisampleArraySampler class >> squeakName [

	^ 'UnsignedInteger2DMultisampleArraySampler'
]
