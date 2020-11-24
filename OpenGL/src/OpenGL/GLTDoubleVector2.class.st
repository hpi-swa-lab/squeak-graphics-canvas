Class {
	#name : #GLTDoubleVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> declarators [

	^ #('dvec2')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> enum [

	^ GL_DOUBLE_VEC2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> enumName [

	^ 'DOUBLE_VEC2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector2 class >> squeakName [

	^ 'DoubleVector2'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTDoubleVector2 >> numComponents [

	^ 2
]
