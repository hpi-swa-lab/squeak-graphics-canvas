helpers
convertEnumValue: aString

	^ (aString beginsWith: '0x')
		ifTrue: [	(Number
					readFrom: (ReadStream on: aString from: 3 to: aString size)
					base: 16) storeStringBase: 16]
		ifFalse: [aString]