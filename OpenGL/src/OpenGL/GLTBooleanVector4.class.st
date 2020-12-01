Class {
	#name : #GLTBooleanVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> componentType [

	^ GLTBoolean
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> declarators [

	^ #('bvec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> enum [

	^ GL_BOOL_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> enumName [

	^ 'BOOL_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTBooleanVector4 class >> squeakName [

	^ 'BooleanVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTBooleanVector4 >> numComponents [

	^ 4
]
