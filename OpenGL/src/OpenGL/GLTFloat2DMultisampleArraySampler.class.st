Class {
	#name : #GLTFloat2DMultisampleArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DMultisampleArraySampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DMultisampleArraySampler class >> declarators [

	^ #('sampler2DMSArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DMultisampleArraySampler class >> enum [

	^ GL_SAMPLER_2D_MULTISAMPLE_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DMultisampleArraySampler class >> enumName [

	^ 'SAMPLER_2D_MULTISAMPLE_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DMultisampleArraySampler class >> squeakName [

	^ 'Float2DMultisampleArraySampler'
]
