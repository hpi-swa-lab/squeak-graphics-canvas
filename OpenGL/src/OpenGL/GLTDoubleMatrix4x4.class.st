Class {
	#name : #GLTDoubleMatrix4x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> declarators [

	^ #('dmat4' 'dmat4x4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> enum [

	^ GL_DOUBLE_MAT4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> enumName [

	^ 'DOUBLE_MAT4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix4x4 class >> squeakName [

	^ 'DoubleMatrix4x4'
]
