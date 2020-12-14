Class {
	#name : #GLSLFloatMatrix4x4,
	#superclass : #GLSLMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> declarators [

	^ #('mat4' 'mat4x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> enum [

	^ GL_FLOAT_MAT4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> enumName [

	^ 'FLOAT_MAT4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x4 class >> squeakName [

	^ 'FloatMatrix4x4'
]
