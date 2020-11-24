Class {
	#name : #GLTArray,
	#superclass : #GLType,
	#instVars : [
		'type',
		'numElements'
	],
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/23/2020 16:18'
}
GLTArray class >> numElements: length enum: anInteger [

	^ self numElements: length type: (GLType forEnum: anInteger)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/23/2020 16:18'
}
GLTArray class >> numElements: length type: aGLType [

	^ self basicNew
		type: aGLType;
		numElements: length;
		initialize;
		yourself
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:34'
}
GLTArray >> componentType [

	^ type componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:17'
}
GLTArray >> numComponents [

	^ numElements * type numComponents
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:16'
}
GLTArray >> numElements [

	^ numElements
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLTArray >> numElements: anObject [

	numElements := anObject
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:10'
}
GLTArray >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	type setUniform: aUniform toArray: aRawBitsArray count: numElements
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:24'
}
GLTArray >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:24'
}
GLTArray >> type: anObject [

	type := anObject
]
