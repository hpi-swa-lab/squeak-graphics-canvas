Class {
	#name : #GLSLFloatVector2,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> declarators [

	^ #('vec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> enum [

	^ GL_FLOAT_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> enumName [

	^ 'FLOAT_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector2 class >> squeakName [

	^ 'FloatVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLFloatVector2 >> numComponents [

	^ 2
]
