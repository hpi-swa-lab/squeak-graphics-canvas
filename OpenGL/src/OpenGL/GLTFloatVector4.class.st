Class {
	#name : #GLTFloatVector4,
	#superclass : #GLTVector,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> declarators [

	^ #('vec4')
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> enum [

	^ GL_FLOAT_VEC4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> enumName [

	^ 'FLOAT_VEC4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> numComponents [

	^ 4
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 class >> squeakName [

	^ 'FloatVector4'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTFloatVector4 >> numComponents [

	^ 4
]
