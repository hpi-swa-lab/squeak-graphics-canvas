Class {
	#name : #GLTFloatCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeMapArraySampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeMapArraySampler class >> declarators [

	^ #('samplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeMapArraySampler class >> enum [

	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeMapArraySampler class >> enumName [

	^ 'SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloatCubeMapArraySampler class >> squeakName [

	^ 'FloatCubeMapArraySampler'
]
