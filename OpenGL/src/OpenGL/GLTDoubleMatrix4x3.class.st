Class {
	#name : #GLTDoubleMatrix4x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> declarators [

	^ #('dmat4x3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> enum [

	^ GL_DOUBLE_MAT4x3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> enumName [

	^ 'DOUBLE_MAT4x3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x3 class >> squeakName [

	^ 'DoubleMatrix4x3'
]
