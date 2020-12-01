Class {
	#name : #GLTUnsignedInteger,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> commandInitials [

	^ 'ui'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> componentType [

	^ GLTUnsignedInteger
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> declarators [

	^ #('uint' 'unsigned int')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> enum [

	^ GL_UNSIGNED_INT
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> enumName [

	^ 'UNSIGNED_INT'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> glslInitials [

	^ 'u'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> squeakArrayClass [

	^ WordArray
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTUnsignedInteger class >> squeakName [

	^ 'UnsignedInteger'
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTUnsignedInteger >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentUnsignedIntegerArray: aRawBitsArray count: numElements
]
