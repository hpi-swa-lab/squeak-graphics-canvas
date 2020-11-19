Class {
	#name : #GLGenEnumGroup,
	#superclass : #GLGenObject,
	#instVars : [
		'enums',
		'parameters'
	],
	#category : #'OpenGL-Generation'
}

{ #category : #'instance creation' }
GLGenEnumGroup class >> registry: registry name: aSymbol [

	^ registry enumGroups
		at: aSymbol
		ifAbsentPut: [self new name: aSymbol]
]

{ #category : #accessing }
GLGenEnumGroup >> addEnum: enum [

	^ enums add: enum
]

{ #category : #accessing }
GLGenEnumGroup >> addParameter: param [

	^ parameters add: param
]

{ #category : #accessing }
GLGenEnumGroup >> enums [

	^ enums
]

{ #category : #initialization }
GLGenEnumGroup >> initialize [

	super initialize.
	enums := OrderedCollection new.
	parameters := OrderedCollection new
]

{ #category : #accessing }
GLGenEnumGroup >> parameters [

	^ parameters
]

{ #category : #printing }
GLGenEnumGroup >> printOn: aStream [

	aStream nextPutAll: 'Group '.
	name printOn: aStream.
	aStream nextPutAll: ' [size '.
	enums size printOn: aStream.
	aStream nextPut: $]
]
