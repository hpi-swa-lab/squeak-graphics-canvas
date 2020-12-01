Class {
	#name : #GLTFloat1DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DSampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DSampler class >> declarators [

	^ #('sampler1D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DSampler class >> enum [

	^ GL_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DSampler class >> enumName [

	^ 'SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat1DSampler class >> squeakName [

	^ 'Float1DSampler'
]
