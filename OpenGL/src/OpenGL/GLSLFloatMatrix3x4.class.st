Class {
	#name : #GLSLFloatMatrix3x4,
	#superclass : #GLSLMatrix,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> declarators [

	^ #('mat3x4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> enum [

	^ GL_FLOAT_MAT3x4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> enumName [

	^ 'FLOAT_MAT3x4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> numColumns [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> numRows [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:48'
}
GLSLFloatMatrix3x4 class >> squeakName [

	^ 'FloatMatrix3x4'
]
