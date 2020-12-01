Class {
	#name : #GLTInteger2DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DSampler class >> declarators [

	^ #('isampler2D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DSampler class >> enum [

	^ GL_INT_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DSampler class >> enumName [

	^ 'INT_SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DSampler class >> squeakName [

	^ 'Integer2DSampler'
]
