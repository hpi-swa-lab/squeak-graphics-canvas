Class {
	#name : #GLTDoubleMatrix2x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> declarators [

	^ #('dmat2x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> enum [

	^ GL_DOUBLE_MAT2x4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> enumName [

	^ 'DOUBLE_MAT2x4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTDoubleMatrix2x4 class >> squeakName [

	^ 'DoubleMatrix2x4'
]
