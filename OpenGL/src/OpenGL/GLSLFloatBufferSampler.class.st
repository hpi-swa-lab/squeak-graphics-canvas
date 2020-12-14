Class {
	#name : #GLSLFloatBufferSampler,
	#superclass : #GLSLSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatBufferSampler class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatBufferSampler class >> declarators [

	^ #('samplerBuffer')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatBufferSampler class >> enum [

	^ GL_SAMPLER_BUFFER
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatBufferSampler class >> enumName [

	^ 'SAMPLER_BUFFER'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloatBufferSampler class >> squeakName [

	^ 'FloatBufferSampler'
]
