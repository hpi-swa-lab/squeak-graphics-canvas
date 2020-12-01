Class {
	#name : #GLTDoubleMatrix3x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> declarators [

	^ #('dmat3x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> enum [

	^ GL_DOUBLE_MAT3x4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> enumName [

	^ 'DOUBLE_MAT3x4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix3x4 class >> squeakName [

	^ 'DoubleMatrix3x4'
]
