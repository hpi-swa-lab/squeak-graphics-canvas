Class {
	#name : #GLTUnsignedInteger2DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DArraySampler class >> declarators [

	^ #('usampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DArraySampler class >> enum [

	^ GL_UNSIGNED_INT_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DArraySampler class >> enumName [

	^ 'UNSIGNED_INT_SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTUnsignedInteger2DArraySampler class >> squeakName [

	^ 'UnsignedInteger2DArraySampler'
]
