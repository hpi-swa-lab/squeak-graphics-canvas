as yet unclassified
paramType: anElement
	^ self convertType: (((anElement firstTagNamed: #ptype)
		ifNotNil: [ :it | it contentString ]
		ifNil: [ anElement contentString ]) withBlanksTrimmed)