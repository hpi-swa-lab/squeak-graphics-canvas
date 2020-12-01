Class {
	#name : #GLTUnsignedIntegerCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeMapArraySampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeMapArraySampler class >> declarators [

	^ #('usamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeMapArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeMapArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedIntegerCubeMapArraySampler class >> squeakName [

	^ 'UnsignedIntegerCubeMapArraySampler'
]
