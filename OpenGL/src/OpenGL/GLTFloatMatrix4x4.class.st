Class {
	#name : #GLTFloatMatrix4x4,
	#superclass : #GLTMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> declarators [

	^ #('mat4' 'mat4x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> enum [

	^ GL_FLOAT_MAT4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> enumName [

	^ 'FLOAT_MAT4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 15:14'
}
GLTFloatMatrix4x4 class >> squeakName [

	^ 'FloatMatrix4x4'
]
