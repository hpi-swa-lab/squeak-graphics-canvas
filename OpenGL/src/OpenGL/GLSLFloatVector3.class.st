Class {
	#name : #GLSLFloatVector3,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> declarators [

	^ #('vec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> enum [

	^ GL_FLOAT_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> enumName [

	^ 'FLOAT_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLFloatVector3 class >> squeakName [

	^ 'FloatVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLFloatVector3 >> numComponents [

	^ 3
]
