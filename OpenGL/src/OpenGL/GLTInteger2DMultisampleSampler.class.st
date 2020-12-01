Class {
	#name : #GLTInteger2DMultisampleSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DMultisampleSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleSampler class >> declarators [

	^ #('isampler2DMS')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleSampler class >> enum [

	^ GL_INT_SAMPLER_2D_MULTISAMPLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleSampler class >> enumName [

	^ 'INT_SAMPLER_2D_MULTISAMPLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DMultisampleSampler class >> squeakName [

	^ 'Integer2DMultisampleSampler'
]
