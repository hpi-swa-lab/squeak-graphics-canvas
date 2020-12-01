Class {
	#name : #GLTIntegerCubeSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeSampler class >> declarators [

	^ #('isamplerCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeSampler class >> enum [

	^ GL_INT_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeSampler class >> enumName [

	^ 'INT_SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeSampler class >> squeakName [

	^ 'IntegerCubeSampler'
]
