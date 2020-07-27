Class {
	#name : #ExternalArrayType,
	#superclass : #Object,
	#instVars : [
		'numberOfItems',
		'type'
	],
	#category : #'Vulkan-FFI-Support'
}

{ #category : #'as yet unclassified' }
ExternalArrayType >> asNonPointerType [

	^ "ExternalArrayType new
		type: type asNonPointerType;
		numberOfItems: self numberOfItems;
		yourself"type asNonPointerType
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> byteAlignment [

	self flag: #fixme. " 8 on 64bit linux is definitely wrong. that's all we know so far "
	^ type asNonPointerType byteAlignment "type byteAlignment"
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> byteSize [

	^ type asNonPointerType byteSize * self numberOfItems
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> embeddedSpecWithSize: aNumber [

	^ type embeddedSpecWithSize: aNumber
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> handle: handle at: byteOffset [

	^ type handle: handle at: byteOffset
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> handle: handle at: byteOffset put: value [

	^ type handle: handle at: byteOffset put: value
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> isArrayType [

	^ true
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> isAtomic [

	^ type isAtomic
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> isVoid [

	^ type isVoid
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> numberOfItems [

	^ numberOfItems
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> numberOfItems: aNumber [

	numberOfItems := aNumber
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> printOn: aStream [

	type printOn: aStream.
	aStream
		nextPut: $[;
		print: self numberOfItems;
		nextPut: $]
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> readFieldAt: byteOffset [

	^ String streamContents: [:stream |
		stream nextPutAll: '^ (ExternalData fromHandle: ';
			nextPutAll: 'handle + ';
			print: byteOffset - 1;
			nextPutAll: ' type: ('.
		
		stream nextPutAll: (self isAtomic ifTrue: ['ExternalType ', type atomicTypeName] ifFalse: [type referentClass name, ' externalType']).
		
		stream
			nextPutAll: ' asArrayType: ';
			print: self numberOfItems;
			nextPutAll: ')) size: ';
			print: self numberOfItems;
			nextPutAll: '; yourself']
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> type: aType [

	type := aType
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> writeFieldArgName [

	^ type writeFieldArgName
]

{ #category : #'as yet unclassified' }
ExternalArrayType >> writeFieldAt: byteOffset with: valueName [

	^ 'self shouldNotImplement'
]
