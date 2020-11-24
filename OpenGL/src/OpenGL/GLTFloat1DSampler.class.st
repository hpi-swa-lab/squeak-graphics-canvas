Class {
	#name : #GLTFloat1DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DSampler class >> declarators [

	^ #('sampler1D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DSampler class >> enum [

	^ GL_SAMPLER_1D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DSampler class >> enumName [

	^ 'SAMPLER_1D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat1DSampler class >> squeakName [

	^ 'Float1DSampler'
]
