Class {
	#name : #GLTIntegerVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> declarators [

	^ #('ivec2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> enum [

	^ GL_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> enumName [

	^ 'INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 class >> squeakName [

	^ 'IntegerVector2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector2 >> numComponents [

	^ 2
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTIntegerVector2 >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo2ComponentIntegerArray: aRawBitsArray count: numElements
]
