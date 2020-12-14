Class {
	#name : #GLSLFloatMatrix4x2,
	#superclass : #GLSLMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> declarators [

	^ #('mat4x2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> enum [

	^ GL_FLOAT_MAT4x2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> enumName [

	^ 'FLOAT_MAT4x2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> numColumns [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> numRows [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix4x2 class >> squeakName [

	^ 'FloatMatrix4x2'
]
