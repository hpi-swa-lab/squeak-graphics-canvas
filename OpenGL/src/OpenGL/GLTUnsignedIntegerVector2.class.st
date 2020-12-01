Class {
	#name : #GLTUnsignedIntegerVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> declarators [

	^ #('uvec2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> enum [

	^ GL_UNSIGNED_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> enumName [

	^ 'UNSIGNED_INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 class >> squeakName [

	^ 'UnsignedIntegerVector2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector2 >> numComponents [

	^ 2
]
