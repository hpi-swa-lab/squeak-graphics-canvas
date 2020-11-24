Class {
	#name : #GLTIntegerCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeMapArraySampler class >> declarators [

	^ #('isamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeMapArraySampler class >> enum [

	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeMapArraySampler class >> enumName [

	^ 'INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTIntegerCubeMapArraySampler class >> squeakName [

	^ 'IntegerCubeMapArraySampler'
]
