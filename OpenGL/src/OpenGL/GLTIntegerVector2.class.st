Class {
	#name : #GLTIntegerVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> declarators [

	^ #('ivec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> enum [

	^ GL_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> enumName [

	^ 'INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTIntegerVector2 class >> squeakName [

	^ 'IntegerVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTIntegerVector2 >> numComponents [

	^ 2
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:34'
}
GLTIntegerVector2 >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo2ComponentIntegerArray: aRawBitsArray count: numElements
]
