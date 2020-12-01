Class {
	#name : #GLTBooleanVector3,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> componentType [

	^ GLTBoolean
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> declarators [

	^ #('bvec3')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> enum [

	^ GL_BOOL_VEC3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> enumName [

	^ 'BOOL_VEC3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector3 class >> squeakName [

	^ 'BooleanVector3'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTBooleanVector3 >> numComponents [

	^ 3
]
