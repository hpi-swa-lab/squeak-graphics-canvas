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
	#timestamp : ''
}
GLTArray class >> numElements: length enum: anInteger [

	^ self numElements: length type: (GLType forEnum: anInteger)
]

{
	#category : #'instance creation',
	#timestamp : ''
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
	#timestamp : ''
}
GLTArray >> componentType [

	^ type componentType
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTArray >> numComponents [

	^ numElements * type numComponents
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTArray >> numElements [

	^ numElements
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTArray >> numElements: anObject [

	numElements := anObject
]

{
	#category : #'program resources',
	#timestamp : ''
}
GLTArray >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	type setUniform: aUniform toArray: aRawBitsArray count: numElements
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTArray >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : ''
}
GLTArray >> type: anObject [

	type := anObject
]
