Class {
	#name : #GLTFloatMatrix2x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> declarators [

	^ #('mat2x3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> enum [

	^ GL_FLOAT_MAT2x3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> enumName [

	^ 'FLOAT_MAT2x3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> numColumns [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix2x3 class >> squeakName [

	^ 'FloatMatrix2x3'
]
