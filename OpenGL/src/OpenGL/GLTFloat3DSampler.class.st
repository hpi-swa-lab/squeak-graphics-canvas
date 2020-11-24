Class {
	#name : #GLTFloat3DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat3DSampler class >> declarators [

	^ #('sampler3D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat3DSampler class >> enum [

	^ GL_SAMPLER_3D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat3DSampler class >> enumName [

	^ 'SAMPLER_3D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat3DSampler class >> squeakName [

	^ 'Float3DSampler'
]
