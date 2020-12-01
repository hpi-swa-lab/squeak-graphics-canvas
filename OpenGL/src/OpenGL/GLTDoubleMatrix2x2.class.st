Class {
	#name : #GLTDoubleMatrix2x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> declarators [

	^ #('dmat2' 'dmat2x2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> enum [

	^ GL_DOUBLE_MAT2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> enumName [

	^ 'DOUBLE_MAT2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleMatrix2x2 class >> squeakName [

	^ 'DoubleMatrix2x2'
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTDoubleMatrix2x2 >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setToDoubleMatrices2x2: aRawBitsArray count: numElements transpose: true
]
