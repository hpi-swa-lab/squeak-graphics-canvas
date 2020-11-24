Class {
	#name : #GLTFloatMatrix4x3,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> declarators [

	^ #('mat4x3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> enum [

	^ GL_FLOAT_MAT4x3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> enumName [

	^ 'FLOAT_MAT4x3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> numRows [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x3 class >> squeakName [

	^ 'FloatMatrix4x3'
]
