Class {
	#name : #GLTDoubleVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> declarators [

	^ #('dvec4')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> enum [

	^ GL_DOUBLE_VEC4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> enumName [

	^ 'DOUBLE_VEC4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 17:57'
}
GLTDoubleVector4 class >> squeakName [

	^ 'DoubleVector4'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:37'
}
GLTDoubleVector4 >> numComponents [

	^ 4
]
