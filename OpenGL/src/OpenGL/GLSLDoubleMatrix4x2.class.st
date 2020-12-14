Class {
	#name : #GLSLDoubleMatrix4x2,
	#superclass : #GLSLMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> componentType [

	^ GLSLDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> declarators [

	^ #('dmat4x2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> enum [

	^ GL_DOUBLE_MAT4x2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> enumName [

	^ 'DOUBLE_MAT4x2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix4x2 class >> squeakName [

	^ 'DoubleMatrix4x2'
]
