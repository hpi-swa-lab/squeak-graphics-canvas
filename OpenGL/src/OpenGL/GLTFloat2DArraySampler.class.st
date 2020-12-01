Class {
	#name : #GLTFloat2DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTFloat2DArraySampler class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DArraySampler class >> declarators [

	^ #('sampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DArraySampler class >> enum [

	^ GL_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DArraySampler class >> enumName [

	^ 'SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 13:49'
}
GLTFloat2DArraySampler class >> squeakName [

	^ 'Float2DArraySampler'
]
