Class {
	#name : #GLSLFloatCubeSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeSampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeSampler class >> declarators [

	^ #('samplerCube')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeSampler class >> enum [

	^ GL_SAMPLER_CUBE
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeSampler class >> enumName [

	^ 'SAMPLER_CUBE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatCubeSampler class >> squeakName [

	^ 'FloatCubeSampler'
]
