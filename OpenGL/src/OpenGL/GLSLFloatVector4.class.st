Class {
	#name : #GLSLFloatVector4,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> declarators [

	^ #('vec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> enum [

	^ GL_FLOAT_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> enumName [

	^ 'FLOAT_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector4 class >> squeakName [

	^ 'FloatVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLFloatVector4 >> numComponents [

	^ 4
]
