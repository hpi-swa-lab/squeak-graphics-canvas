Class {
	#name : #GLTDoubleVector3,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> declarators [

	^ #('dvec3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> enum [

	^ GL_DOUBLE_VEC3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> enumName [

	^ 'DOUBLE_VEC3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 class >> squeakName [

	^ 'DoubleVector3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector3 >> numComponents [

	^ 3
]
