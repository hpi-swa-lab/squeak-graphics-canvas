Class {
	#name : #GLTDoubleVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> declarators [

	^ #('dvec4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> enum [

	^ GL_DOUBLE_VEC4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> enumName [

	^ 'DOUBLE_VEC4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 class >> squeakName [

	^ 'DoubleVector4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTDoubleVector4 >> numComponents [

	^ 4
]
