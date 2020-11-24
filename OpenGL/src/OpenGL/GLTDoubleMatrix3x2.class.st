Class {
	#name : #GLTDoubleMatrix3x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> declarators [

	^ #('dmat3x2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> enum [

	^ GL_DOUBLE_MAT3x2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> enumName [

	^ 'DOUBLE_MAT3x2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x2 class >> squeakName [

	^ 'DoubleMatrix3x2'
]
