Class {
	#name : #GLTFloatMatrix2x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> declarators [

	^ #('mat2x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> enum [

	^ GL_FLOAT_MAT2x4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> enumName [

	^ 'FLOAT_MAT2x4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x4 class >> squeakName [

	^ 'FloatMatrix2x4'
]
