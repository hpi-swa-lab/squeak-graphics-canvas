Class {
	#name : #GLTUnsignedInteger2DRectSampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DRectSampler class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DRectSampler class >> declarators [

	^ #('usampler2DRect')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DRectSampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_RECT
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DRectSampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_RECT'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTUnsignedInteger2DRectSampler class >> squeakName [

	^ 'UnsignedInteger2DRectSampler'
]
