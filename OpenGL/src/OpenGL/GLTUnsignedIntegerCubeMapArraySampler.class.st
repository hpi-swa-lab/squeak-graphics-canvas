Class {
	#name : #GLTUnsignedIntegerCubeMapArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerCubeMapArraySampler class >> declarators [

	^ #('usamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerCubeMapArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerCubeMapArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedIntegerCubeMapArraySampler class >> squeakName [

	^ 'UnsignedIntegerCubeMapArraySampler'
]
