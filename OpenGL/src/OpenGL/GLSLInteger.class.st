Class {
	#name : #GLSLInteger,
	#superclass : #GLSLScalar,
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> commandInitials [

	^ 'i'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> componentType [

	^ GLSLInteger
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> declarators [

	^ #('int')
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> enum [

	^ GL_INT
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> enumName [

	^ 'INT'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> glslInitials [

	^ 'i'
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> squeakArrayClass [

	^ IntegerArray
]

{
	#category : #accessing,
	#timestamp : 'stlu 12/14/2020 16:49'
}
GLSLInteger class >> squeakName [

	^ 'Integer'
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 17:11'
}
GLSLInteger >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	aUniform setTo1ComponentIntegerArray: aRawBitsArray count: numElements
]
