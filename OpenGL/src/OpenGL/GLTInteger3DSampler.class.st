Class {
	#name : #GLTInteger3DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger3DSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger3DSampler class >> declarators [

	^ #('isampler3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger3DSampler class >> enum [

	^ GL_INT_SAMPLER_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger3DSampler class >> enumName [

	^ 'INT_SAMPLER_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger3DSampler class >> squeakName [

	^ 'Integer3DSampler'
]
