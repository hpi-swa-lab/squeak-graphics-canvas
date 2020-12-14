Class {
	#name : #GLSLBooleanVector3,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> componentType [

	^ GLSLBoolean
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> declarators [

	^ #('bvec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> enum [

	^ GL_BOOL_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> enumName [

	^ 'BOOL_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector3 class >> squeakName [

	^ 'BooleanVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLBooleanVector3 >> numComponents [

	^ 3
]
