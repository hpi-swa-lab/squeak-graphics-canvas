Class {
	#name : #GLTUnsignedIntegerCubeSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeSampler class >> declarators [

	^ #('usamplerCube')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeSampler class >> squeakName [

	^ 'UnsignedIntegerCubeSampler'
]
