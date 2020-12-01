Class {
	#name : #GLTDoubleVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> declarators [

	^ #('dvec2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> enum [

	^ GL_DOUBLE_VEC2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> enumName [

	^ 'DOUBLE_VEC2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 class >> squeakName [

	^ 'DoubleVector2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector2 >> numComponents [

	^ 2
]
