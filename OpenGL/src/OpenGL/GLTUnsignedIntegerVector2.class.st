Class {
	#name : #GLTUnsignedIntegerVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> declarators [

	^ #('uvec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> enum [

	^ GL_UNSIGNED_INT_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> enumName [

	^ 'UNSIGNED_INT_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTUnsignedIntegerVector2 class >> squeakName [

	^ 'UnsignedIntegerVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTUnsignedIntegerVector2 >> numComponents [

	^ 2
]
