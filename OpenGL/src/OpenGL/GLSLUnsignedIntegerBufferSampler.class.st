Class {
	#name : #GLSLUnsignedIntegerBufferSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerBufferSampler class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerBufferSampler class >> declarators [

	^ #('usamplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerBufferSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerBufferSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLUnsignedIntegerBufferSampler class >> squeakName [

	^ 'UnsignedIntegerBufferSampler'
]
