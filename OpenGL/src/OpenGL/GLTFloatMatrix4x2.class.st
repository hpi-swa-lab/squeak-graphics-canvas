Class {
	#name : #GLTFloatMatrix4x2,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> declarators [

	^ #('mat4x2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> enum [

	^ GL_FLOAT_MAT4x2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> enumName [

	^ 'FLOAT_MAT4x2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatMatrix4x2 class >> squeakName [

	^ 'FloatMatrix4x2'
]
