Class {
	#name : #GLSLIntegerVector3,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> declarators [

	^ #('ivec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> enum [

	^ GL_INT_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> enumName [

	^ 'INT_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLIntegerVector3 class >> squeakName [

	^ 'IntegerVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLIntegerVector3 >> numComponents [

	^ 3
]
