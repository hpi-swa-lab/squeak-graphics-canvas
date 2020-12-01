Class {
	#name : #GLTFloat,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> commandInitials [

	^ 'f'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> componentType [

	^ GLTFloat
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> declarators [

	^ #('float')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> enum [

	^ GL_FLOAT
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> enumName [

	^ 'FLOAT'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> glslInitials [

	^ ''
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> squeakArrayClass [

	^ Float32Array
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTFloat class >> squeakName [

	^ 'Float'
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTFloat >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentFloatArray: aRawBitsArray count: numElements
]
