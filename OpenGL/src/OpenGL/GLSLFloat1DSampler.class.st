Class {
	#name : #GLSLFloat1DSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DSampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DSampler class >> declarators [

	^ #('sampler1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DSampler class >> enum [

	^ GL_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DSampler class >> enumName [

	^ 'SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat1DSampler class >> squeakName [

	^ 'Float1DSampler'
]
