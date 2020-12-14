Class {
	#name : #GLSLBooleanVector2,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> componentType [

	^ GLSLBoolean
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> declarators [

	^ #('bvec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> enum [

	^ GL_BOOL_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> enumName [

	^ 'BOOL_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector2 class >> squeakName [

	^ 'BooleanVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLBooleanVector2 >> numComponents [

	^ 2
]
