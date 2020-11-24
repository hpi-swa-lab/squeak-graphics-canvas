Class {
	#name : #GLTFloatCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeMapArraySampler class >> declarators [

	^ #('samplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeMapArraySampler class >> enum [

	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeMapArraySampler class >> enumName [

	^ 'SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloatCubeMapArraySampler class >> squeakName [

	^ 'FloatCubeMapArraySampler'
]
