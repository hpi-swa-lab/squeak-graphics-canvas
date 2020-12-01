Class {
	#name : #GLTBooleanVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> componentType [

	^ GLTBoolean
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> declarators [

	^ #('bvec2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> enum [

	^ GL_BOOL_VEC2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> enumName [

	^ 'BOOL_VEC2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 class >> squeakName [

	^ 'BooleanVector2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBooleanVector2 >> numComponents [

	^ 2
]
