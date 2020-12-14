Class {
	#name : #GLSLFloatCubeMapArraySampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeMapArraySampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeMapArraySampler class >> declarators [

	^ #('samplerCubeArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeMapArraySampler class >> enum [

	^ GL_SAMPLER_CUBE_MAP_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeMapArraySampler class >> enumName [

	^ 'SAMPLER_CUBE_MAP_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeMapArraySampler class >> squeakName [

	^ 'FloatCubeMapArraySampler'
]
