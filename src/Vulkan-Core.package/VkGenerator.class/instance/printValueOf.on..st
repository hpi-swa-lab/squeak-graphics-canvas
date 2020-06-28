as yet unclassified
printValueOf: enum on: stream

	(enum attributeAt: #alias) ifNotNil: [:alias |
		^ stream
			nextPutAll: 'self ';
			nextPutAll: alias].
	(enum attributeAt: #bitpos) ifNotNil: [:position |
		^ stream
			nextPutAll: '1 bitShift: ';
			nextPutAll: position].
	self assert: (enum attributeAt: #value) notNil.
	stream nextPutAll: (self formatNumber: (enum attributeAt: #value))