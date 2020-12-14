Class {
	#name : #GLSLBooleanVector4,
	#superclass : #GLSLVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> componentType [

	^ GLSLBoolean
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> declarators [

	^ #('bvec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> enum [

	^ GL_BOOL_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> enumName [

	^ 'BOOL_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:50'
}
GLSLBooleanVector4 class >> squeakName [

	^ 'BooleanVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLSLBooleanVector4 >> numComponents [

	^ 4
]
