Class {
	#name : #GLTUnsignedInteger3DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger3DSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger3DSampler class >> declarators [

	^ #('usampler3D')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger3DSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_3D
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger3DSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_3D'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger3DSampler class >> squeakName [

	^ 'UnsignedInteger3DSampler'
]
