Class {
	#name : #GLTFloatMatrix2x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> declarators [

	^ #('mat2' 'mat2x2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> enum [

	^ GL_FLOAT_MAT2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> enumName [

	^ 'FLOAT_MAT2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix2x2 class >> squeakName [

	^ 'FloatMatrix2x2'
]
