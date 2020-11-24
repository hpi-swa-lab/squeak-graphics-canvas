Class {
	#name : #GLTBoolean,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> commandInitials [

	^ 'b'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> declarators [

	^ #('bool')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> enum [

	^ GL_BOOL
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> enumName [

	^ 'BOOL'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> glslInitials [

	^ 'b'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> squeakArrayClass [

	^ WordArray
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTBoolean class >> squeakName [

	^ 'Boolean'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 18:10'
}
GLTBoolean >> actualComponentType [

	^ GLTInteger instance "Technically other types are possible too, but this is easiest."
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:09'
}
GLTBoolean >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
