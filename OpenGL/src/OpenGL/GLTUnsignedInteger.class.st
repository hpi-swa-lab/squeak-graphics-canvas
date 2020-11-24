Class {
	#name : #GLTUnsignedInteger,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> commandInitials [

	^ 'ui'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> declarators [

	^ #('uint' 'unsigned int')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> enum [

	^ GL_UNSIGNED_INT
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> enumName [

	^ 'UNSIGNED_INT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> glslInitials [

	^ 'u'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> squeakArrayClass [

	^ WordArray
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTUnsignedInteger class >> squeakName [

	^ 'UnsignedInteger'
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:11'
}
GLTUnsignedInteger >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentUnsignedIntegerArray: aRawBitsArray count: numElements
]
