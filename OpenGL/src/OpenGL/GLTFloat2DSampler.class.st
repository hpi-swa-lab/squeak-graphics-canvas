Class {
	#name : #GLTFloat2DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DSampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DSampler class >> declarators [

	^ #('sampler2D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DSampler class >> enum [

	^ GL_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DSampler class >> enumName [

	^ 'SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DSampler class >> squeakName [

	^ 'Float2DSampler'
]
