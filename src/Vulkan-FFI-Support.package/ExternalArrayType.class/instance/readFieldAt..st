as yet unclassified
readFieldAt: byteOffset

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