Class {
	#name : #GLSLDoubleVector3,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> componentType [

	^ GLSLDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> declarators [

	^ #('dvec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> enum [

	^ GL_DOUBLE_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> enumName [

	^ 'DOUBLE_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector3 class >> squeakName [

	^ 'DoubleVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLDoubleVector3 >> numComponents [

	^ 3
]
