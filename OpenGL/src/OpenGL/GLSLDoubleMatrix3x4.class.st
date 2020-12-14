Class {
	#name : #GLSLDoubleMatrix3x4,
	#superclass : #GLSLMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> componentType [

	^ GLSLDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> declarators [

	^ #('dmat3x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> enum [

	^ GL_DOUBLE_MAT3x4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> enumName [

	^ 'DOUBLE_MAT3x4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLDoubleMatrix3x4 class >> squeakName [

	^ 'DoubleMatrix3x4'
]
