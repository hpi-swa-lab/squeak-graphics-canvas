Class {
	#name : #GLTDouble,
	#superclass : #GLTScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> commandInitials [

	^ 'd'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> declarators [

	^ #('double')
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> enum [

	^ GL_DOUBLE
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> enumName [

	^ 'DOUBLE'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> glslInitials [

	^ 'd'
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> squeakArrayClass [

	^ Float64Array
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 14:04'
}
GLTDouble class >> squeakName [

	^ 'Double'
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:10'
}
GLTDouble >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentDoubleArray: aRawBitsArray count: numElements
]
