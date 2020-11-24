Class {
	#name : #GLTFloat2DRectSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DRectSampler class >> declarators [

	^ #('sampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DRectSampler class >> enum [

	^ GL_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DRectSampler class >> enumName [

	^ 'SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DRectSampler class >> squeakName [

	^ 'Float2DRectSampler'
]
