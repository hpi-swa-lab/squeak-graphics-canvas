Class {
	#name : #GLTInteger,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> commandInitials [

	^ 'i'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTInteger class >> componentType [

	^ GLTInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> declarators [

	^ #('int')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> enum [

	^ GL_INT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> enumName [

	^ 'INT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> glslInitials [

	^ 'i'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> squeakArrayClass [

	^ IntegerArray
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTInteger class >> squeakName [

	^ 'Integer'
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:11'
}
GLTInteger >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
