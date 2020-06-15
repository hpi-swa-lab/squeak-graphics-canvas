xml helpers
convertEnumValue: aString
	(aString size >= 2 and: [(aString first: 2) = '0x'])
		ifTrue: [ ^ '16r' , (aString allButFirst: 2) ]
		ifFalse: [ ^ aString ]