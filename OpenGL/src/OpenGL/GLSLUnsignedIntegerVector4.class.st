Class {
	#name : #GLSLUnsignedIntegerVector4,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> componentType [

	^ GLSLUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> declarators [

	^ #('uvec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> enum [

	^ GL_UNSIGNED_INT_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> enumName [

	^ 'UNSIGNED_INT_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLUnsignedIntegerVector4 class >> squeakName [

	^ 'UnsignedIntegerVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLUnsignedIntegerVector4 >> numComponents [

	^ 4
]
