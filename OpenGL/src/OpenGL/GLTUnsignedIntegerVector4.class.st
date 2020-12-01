Class {
	#name : #GLTUnsignedIntegerVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> declarators [

	^ #('uvec4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> enum [

	^ GL_UNSIGNED_INT_VEC4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> enumName [

	^ 'UNSIGNED_INT_VEC4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 class >> squeakName [

	^ 'UnsignedIntegerVector4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTUnsignedIntegerVector4 >> numComponents [

	^ 4
]
