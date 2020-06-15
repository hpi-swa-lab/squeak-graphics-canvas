xml helpers
convertType: aString

	^ typesMap
		at: aString
		ifAbsent: [
			self error: 'unknown C type ', aString.
			'invalid' ].