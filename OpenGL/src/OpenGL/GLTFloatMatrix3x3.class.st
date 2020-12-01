Class {
	#name : #GLTFloatMatrix3x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> declarators [

	^ #('mat3' 'mat3x3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> enum [

	^ GL_FLOAT_MAT3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> enumName [

	^ 'FLOAT_MAT3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix3x3 class >> squeakName [

	^ 'FloatMatrix3x3'
]
