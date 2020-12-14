Class {
	#name : #GLSLIntegerCubeSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeSampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeSampler class >> declarators [

	^ #('isamplerCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeSampler class >> enum [

	^ GL_INT_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeSampler class >> enumName [

	^ 'INT_SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerCubeSampler class >> squeakName [

	^ 'IntegerCubeSampler'
]
