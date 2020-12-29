Class {
	#name : #KhrEnumGroup,
	#superclass : #KhrRegistryObject,
	#instVars : [
		'enums',
		'parameters'
	],
	#category : #'OpenGL-Generation',
	#commentStamp : ''
}

{
	#category : #'instance creation',
	#timestamp : 'stlu 11/1/2020 20:14'
}
KhrEnumGroup class >> registry: registry name: aSymbol [

	^ registry enumGroups
		at: aSymbol
		ifAbsentPut: [self new name: aSymbol]
]

{
	#category : #visiting,
	#timestamp : 'stlu 12/28/2020 13:04'
}
KhrEnumGroup >> acceptVisitor: aVisitor [

	^ aVisitor visitEnumGroup: self
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:16'
}
KhrEnumGroup >> addEnum: enum [

	^ enums add: enum
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 23:16'
}
KhrEnumGroup >> addParameter: param [

	^ parameters add: param
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrEnumGroup >> enums [

	^ enums
]

{
	#category : #initialization,
	#timestamp : 'stlu 10/31/2020 22:58'
}
KhrEnumGroup >> initialize [

	super initialize.
	enums := OrderedCollection new.
	parameters := OrderedCollection new
]

{
	#category : #accessing,
	#timestamp : 'stlu 10/31/2020 22:19'
}
KhrEnumGroup >> parameters [

	^ parameters
]

{
	#category : #printing,
	#timestamp : 'stlu 10/31/2020 23:35'
}
KhrEnumGroup >> printOn: aStream [

	aStream nextPutAll: 'Group '.
	name printOn: aStream.
	aStream nextPutAll: ' [size '.
	enums size printOn: aStream.
	aStream nextPut: $]
]
