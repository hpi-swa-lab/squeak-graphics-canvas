Class {
	#name : #GLSLIntegerBufferSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerBufferSampler class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerBufferSampler class >> declarators [

	^ #('isamplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerBufferSampler class >> enum [

	^ GL_INT_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerBufferSampler class >> enumName [

	^ 'INT_SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLIntegerBufferSampler class >> squeakName [

	^ 'IntegerBufferSampler'
]
