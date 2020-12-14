Class {
	#name : #GLSLIntegerVector2,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> declarators [

	^ #('ivec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> enum [

	^ GL_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> enumName [

	^ 'INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector2 class >> squeakName [

	^ 'IntegerVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLIntegerVector2 >> numComponents [

	^ 2
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:34'
}
GLSLIntegerVector2 >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo2ComponentIntegerArray: aRawBitsArray count: numElements
]
