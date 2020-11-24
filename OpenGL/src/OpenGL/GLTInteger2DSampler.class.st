Class {
	#name : #GLTInteger2DSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DSampler class >> declarators [

	^ #('isampler2D')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DSampler class >> enum [

	^ GL_INT_SAMPLER_2D
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DSampler class >> enumName [

	^ 'INT_SAMPLER_2D'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DSampler class >> squeakName [

	^ 'Integer2DSampler'
]
