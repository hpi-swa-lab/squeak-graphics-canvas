Class {
	#name : #GLGenEnumGroup,
	#superclass : #GLGenObject,
	#instVars : [
		'enums',
		'parameters'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : ''
}
GLGenEnumGroup class >> registry: registry name: aSymbol [

	^ registry enumGroups
		at: aSymbol
		ifAbsentPut: [self new name: aSymbol]
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnumGroup >> addEnum: enum [

	^ enums add: enum
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnumGroup >> addParameter: param [

	^ parameters add: param
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnumGroup >> enums [

	^ enums
]

{
	#category : #initialization,
	#timestamp : ''
}
GLGenEnumGroup >> initialize [

	super initialize.
	enums := OrderedCollection new.
	parameters := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : ''
}
GLGenEnumGroup >> parameters [

	^ parameters
]

{
	#category : #printing,
	#timestamp : ''
}
GLGenEnumGroup >> printOn: aStream [

	aStream nextPutAll: 'Group '.
	name printOn: aStream.
	aStream nextPutAll: ' [size '.
	enums size printOn: aStream.
	aStream nextPut: $]
]
