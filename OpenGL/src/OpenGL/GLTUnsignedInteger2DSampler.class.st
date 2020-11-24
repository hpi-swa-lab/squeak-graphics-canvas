Class {
	#name : #GLTUnsignedInteger2DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DSampler class >> declarators [

	^ #('usampler2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DSampler class >> squeakName [

	^ 'UnsignedInteger2DSampler'
]
