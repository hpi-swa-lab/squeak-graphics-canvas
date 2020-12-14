Class {
	#name : #GLSLDoubleVector2,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> componentType [

	^ GLSLDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> declarators [

	^ #('dvec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> enum [

	^ GL_DOUBLE_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> enumName [

	^ 'DOUBLE_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector2 class >> squeakName [

	^ 'DoubleVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLDoubleVector2 >> numComponents [

	^ 2
]
