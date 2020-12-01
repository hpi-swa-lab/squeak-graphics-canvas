Class {
	#name : #GLTFloatVector3,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> declarators [

	^ #('vec3')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> enum [

	^ GL_FLOAT_VEC3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> enumName [

	^ 'FLOAT_VEC3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> numComponents [

	^ 3
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 class >> squeakName [

	^ 'FloatVector3'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector3 >> numComponents [

	^ 3
]
