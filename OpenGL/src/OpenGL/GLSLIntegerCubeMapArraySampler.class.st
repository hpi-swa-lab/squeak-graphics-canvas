Class {
	#name : #GLSLIntegerCubeMapArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeMapArraySampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeMapArraySampler class >> declarators [

	^ #('isamplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeMapArraySampler class >> enum [

	^ GL_INT_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeMapArraySampler class >> enumName [

	^ 'INT_SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeMapArraySampler class >> squeakName [

	^ 'IntegerCubeMapArraySampler'
]
