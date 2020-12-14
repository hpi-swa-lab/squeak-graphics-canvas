Class {
	#name : #GLSLFloat,
	#superclass : #GLSLScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> commandInitials [

	^ 'f'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> componentType [

	^ GLSLFloat
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> declarators [

	^ #('float')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> enum [

	^ GL_FLOAT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> enumName [

	^ 'FLOAT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> glslInitials [

	^ ''
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> squeakArrayClass [

	^ Float32Array
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLFloat class >> squeakName [

	^ 'Float'
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:10'
}
GLSLFloat >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentFloatArray: aRawBitsArray count: numElements
]

{
	#category : #'program resources',
	#timestamp : 'stlu 12/14/2020 11:54'
}
GLSLFloat >> setUniform: aUniform toObject: anObject [

	aUniform setToFloat: anObject
]
