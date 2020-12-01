Class {
	#name : #GLTIntegerVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> declarators [

	^ #('ivec4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> enum [

	^ GL_INT_VEC4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> enumName [

	^ 'INT_VEC4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 class >> squeakName [

	^ 'IntegerVector4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector4 >> numComponents [

	^ 4
]
