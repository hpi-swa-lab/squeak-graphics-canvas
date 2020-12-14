Class {
	#name : #GLSLUnsignedIntegerVector2,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> declarators [

	^ #('uvec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> enum [

	^ GL_UNSIGNED_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> enumName [

	^ 'UNSIGNED_INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector2 class >> squeakName [

	^ 'UnsignedIntegerVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLUnsignedIntegerVector2 >> numComponents [

	^ 2
]
