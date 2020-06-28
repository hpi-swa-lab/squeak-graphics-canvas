as yet unclassified
signatureStringFor: aString params: aCollection

	^ String streamContents: [:stream |
		stream nextPutAll: aString.
		aCollection ifNotEmpty: [stream nextPutAll: ': '].
		aCollection
			do: [:param |
				stream nextPutAll: (param firstTagNamed: #name) contentString]
			separatedBy: [stream nextPutAll: ' with: ']]