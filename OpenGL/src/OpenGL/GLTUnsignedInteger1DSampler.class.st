Class {
	#name : #GLTUnsignedInteger1DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DSampler class >> declarators [

	^ #('usampler1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger1DSampler class >> squeakName [

	^ 'UnsignedInteger1DSampler'
]
