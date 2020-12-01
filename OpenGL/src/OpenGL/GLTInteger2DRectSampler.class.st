Class {
	#name : #GLTInteger2DRectSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DRectSampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DRectSampler class >> declarators [

	^ #('isampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DRectSampler class >> enum [

	^ GL_INT_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DRectSampler class >> enumName [

	^ 'INT_SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTInteger2DRectSampler class >> squeakName [

	^ 'Integer2DRectSampler'
]
