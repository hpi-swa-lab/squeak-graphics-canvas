Class {
	#name : #GLTFloat2DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DSampler class >> declarators [

	^ #('sampler2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DSampler class >> enum [

	^ GL_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DSampler class >> enumName [

	^ 'SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DSampler class >> squeakName [

	^ 'Float2DSampler'
]
