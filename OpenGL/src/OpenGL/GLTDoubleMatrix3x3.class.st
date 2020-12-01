Class {
	#name : #GLTDoubleMatrix3x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> declarators [

	^ #('dmat3' 'dmat3x3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> enum [

	^ GL_DOUBLE_MAT3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> enumName [

	^ 'DOUBLE_MAT3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix3x3 class >> squeakName [

	^ 'DoubleMatrix3x3'
]
