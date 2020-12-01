Class {
	#name : #GLTIntegerCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeMapArraySampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeMapArraySampler class >> declarators [

	^ #('isamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeMapArraySampler class >> enum [

	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeMapArraySampler class >> enumName [

	^ 'INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTIntegerCubeMapArraySampler class >> squeakName [

	^ 'IntegerCubeMapArraySampler'
]
