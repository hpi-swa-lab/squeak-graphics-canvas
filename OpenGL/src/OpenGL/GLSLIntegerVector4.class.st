Class {
	#name : #GLSLIntegerVector4,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> declarators [

	^ #('ivec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> enum [

	^ GL_INT_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> enumName [

	^ 'INT_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector4 class >> squeakName [

	^ 'IntegerVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLIntegerVector4 >> numComponents [

	^ 4
]
