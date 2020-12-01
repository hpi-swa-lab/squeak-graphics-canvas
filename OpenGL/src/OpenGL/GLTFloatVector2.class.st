Class {
	#name : #GLTFloatVector2,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> declarators [

	^ #('vec2')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> enum [

	^ GL_FLOAT_VEC2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> enumName [

	^ 'FLOAT_VEC2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> numComponents [

	^ 2
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 class >> squeakName [

	^ 'FloatVector2'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector2 >> numComponents [

	^ 2
]
