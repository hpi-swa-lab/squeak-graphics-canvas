Class {
	#name : #GLTFloatCubeSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeSampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeSampler class >> declarators [

	^ #('samplerCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeSampler class >> enum [

	^ GL_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeSampler class >> enumName [

	^ 'SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeSampler class >> squeakName [

	^ 'FloatCubeSampler'
]
