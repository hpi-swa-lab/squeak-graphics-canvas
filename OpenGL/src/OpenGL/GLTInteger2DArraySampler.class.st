Class {
	#name : #GLTInteger2DArraySampler,
	#superclass : #GLTSampler,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DArraySampler class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DArraySampler class >> declarators [

	^ #('isampler2DArray')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DArraySampler class >> enum [

	^ GL_INT_SAMPLER_2D_ARRAY
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DArraySampler class >> enumName [

	^ 'INT_SAMPLER_2D_ARRAY'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 15:18'
}
GLTInteger2DArraySampler class >> squeakName [

	^ 'Integer2DArraySampler'
]
