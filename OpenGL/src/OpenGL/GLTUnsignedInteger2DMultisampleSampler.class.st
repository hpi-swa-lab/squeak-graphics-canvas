Class {
	#name : #GLTUnsignedInteger2DMultisampleSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleSampler class >> declarators [

	^ #('usampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DMultisampleSampler class >> squeakName [

	^ 'UnsignedInteger2DMultisampleSampler'
]
