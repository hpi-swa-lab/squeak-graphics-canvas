Class {
	#name : #GLTIntegerVector3,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> declarators [

	^ #('ivec3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> enum [

	^ GL_INT_VEC3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> enumName [

	^ 'INT_VEC3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 class >> squeakName [

	^ 'IntegerVector3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTIntegerVector3 >> numComponents [

	^ 3
]
