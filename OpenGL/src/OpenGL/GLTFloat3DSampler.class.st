Class {
	#name : #GLTFloat3DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat3DSampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat3DSampler class >> declarators [

	^ #('sampler3D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat3DSampler class >> enum [

	^ GL_SAMPLER_3D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat3DSampler class >> enumName [

	^ 'SAMPLER_3D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat3DSampler class >> squeakName [

	^ 'Float3DSampler'
]
