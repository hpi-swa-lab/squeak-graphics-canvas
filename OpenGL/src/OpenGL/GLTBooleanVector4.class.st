Class {
	#name : #GLTBooleanVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> componentType [

	^ GLTBoolean
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> declarators [

	^ #('bvec4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> enum [

	^ GL_BOOL_VEC4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> enumName [

	^ 'BOOL_VEC4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 class >> squeakName [

	^ 'BooleanVector4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector4 >> numComponents [

	^ 4
]
