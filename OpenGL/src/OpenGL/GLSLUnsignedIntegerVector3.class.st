Class {
	#name : #GLSLUnsignedIntegerVector3,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> declarators [

	^ #('uvec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> enum [

	^ GL_UNSIGNED_INT_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> enumName [

	^ 'UNSIGNED_INT_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector3 class >> squeakName [

	^ 'UnsignedIntegerVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLUnsignedIntegerVector3 >> numComponents [

	^ 3
]
