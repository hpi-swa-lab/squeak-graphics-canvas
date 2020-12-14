Class {
	#name : #GLSLDoubleVector4,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> componentType [

	^ GLSLDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> declarators [

	^ #('dvec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> enum [

	^ GL_DOUBLE_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> enumName [

	^ 'DOUBLE_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLDoubleVector4 class >> squeakName [

	^ 'DoubleVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLDoubleVector4 >> numComponents [

	^ 4
]
