Class {
	#name : #GLTDoubleMatrix4x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> declarators [

	^ #('dmat4x2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> enum [

	^ GL_DOUBLE_MAT4x2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> enumName [

	^ 'DOUBLE_MAT4x2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x2 class >> squeakName [

	^ 'DoubleMatrix4x2'
]
