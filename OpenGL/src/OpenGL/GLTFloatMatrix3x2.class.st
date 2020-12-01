Class {
	#name : #GLTFloatMatrix3x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> declarators [

	^ #('mat3x2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> enum [

	^ GL_FLOAT_MAT3x2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> enumName [

	^ 'FLOAT_MAT3x2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x2 class >> squeakName [

	^ 'FloatMatrix3x2'
]
