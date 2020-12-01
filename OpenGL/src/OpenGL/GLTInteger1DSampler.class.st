Class {
	#name : #GLTInteger1DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger1DSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger1DSampler class >> declarators [

	^ #('isampler1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger1DSampler class >> enum [

	^ GL_INT_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger1DSampler class >> enumName [

	^ 'INT_SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger1DSampler class >> squeakName [

	^ 'Integer1DSampler'
]
