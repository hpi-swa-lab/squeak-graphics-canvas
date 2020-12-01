Class {
	#name : #GLTDouble,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> commandInitials [

	^ 'd'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> componentType [

	^ GLTDouble
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> declarators [

	^ #('double')
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> enum [

	^ GL_DOUBLE
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> enumName [

	^ 'DOUBLE'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> glslInitials [

	^ 'd'
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> squeakArrayClass [

	^ Float64Array
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 18:36'
}
GLTDouble class >> squeakName [

	^ 'Double'
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTDouble >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentDoubleArray: aRawBitsArray count: numElements
]
