Class {
	#name : #GLTUnsignedInteger2DRectSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DRectSampler class >> declarators [

	^ #('usampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DRectSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DRectSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DRectSampler class >> squeakName [

	^ 'UnsignedInteger2DRectSampler'
]
