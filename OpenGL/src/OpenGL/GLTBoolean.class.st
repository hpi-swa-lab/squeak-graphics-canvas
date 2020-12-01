Class {
	#name : #GLTBoolean,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> commandInitials [

	^ 'b'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> componentType [

	^ GLTBoolean
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> declarators [

	^ #('bool')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> enum [

	^ GL_BOOL
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> enumName [

	^ 'BOOL'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> glslInitials [

	^ 'b'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> squeakArrayClass [

	^ WordArray
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTBoolean class >> squeakName [

	^ 'Boolean'
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTBoolean >> actualComponentType [

	^ GLTInteger instance "Technically other types are possible too, but this is easiest."
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTBoolean >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
