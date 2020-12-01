Class {
	#name : #GLTDoubleMatrix2x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> declarators [

	^ #('dmat2x3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> enum [

	^ GL_DOUBLE_MAT2x3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> enumName [

	^ 'DOUBLE_MAT2x3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x3 class >> squeakName [

	^ 'DoubleMatrix2x3'
]
