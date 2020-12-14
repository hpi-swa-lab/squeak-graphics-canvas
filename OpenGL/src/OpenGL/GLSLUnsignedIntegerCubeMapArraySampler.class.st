Class {
	#name : #GLSLUnsignedIntegerCubeMapArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeMapArraySampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeMapArraySampler class >> declarators [

	^ #('usamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeMapArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeMapArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeMapArraySampler class >> squeakName [

	^ 'UnsignedIntegerCubeMapArraySampler'
]
