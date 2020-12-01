Class {
	#name : #GLTFloatMatrix3x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> declarators [

	^ #('mat3x4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> enum [

	^ GL_FLOAT_MAT3x4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> enumName [

	^ 'FLOAT_MAT3x4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix3x4 class >> squeakName [

	^ 'FloatMatrix3x4'
]
