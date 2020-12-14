Class {
	#name : #GLSLUnsignedIntegerCubeSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeSampler class >> declarators [

	^ #('usamplerCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerCubeSampler class >> squeakName [

	^ 'UnsignedIntegerCubeSampler'
]
