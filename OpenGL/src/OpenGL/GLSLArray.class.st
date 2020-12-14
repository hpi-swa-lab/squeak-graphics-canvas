Class {
	#name : #GLSLArray,
	#superclass : #GLSLType,
	#instVars : [
		'type',
		'numElements'
	],
	#category : #'OpenGL-Wrappers-Types',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/14/2020 16:16'
}
GLSLArray class >> instance [

	self shouldNotImplement
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 12/14/2020 16:17'
}
GLSLArray class >> numElements: length enum: anInteger [

	^ self numElements: length type: (GLSLType forEnum: anInteger)
]

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/23/2020 16:18'
}
GLSLArray class >> numElements: length type: aGLType [

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
GLSLArray >> componentType [

	^ type componentType
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:17'
}
GLSLArray >> numComponents [

	^ numElements * type numComponents
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:16'
}
GLSLArray >> numElements [

	^ numElements
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/23/2020 16:15'
}
GLSLArray >> numElements: anObject [

	numElements := anObject
]

{
	#category : #'program resources',
	#timestamp : 'stlu 11/23/2020 16:10'
}
GLSLArray >> setUniform: aUniform toArray: aRawBitsArray count: numElements [

	type setUniform: aUniform toArray: aRawBitsArray count: numElements
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:24'
}
GLSLArray >> type [

	^ type
]

{
	#category : #accessing,
	#timestamp : 'stlu 11/19/2020 07:24'
}
GLSLArray >> type: anObject [

	type := anObject
]
