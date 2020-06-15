xml helpers
convertType: aString
	^ typesMap at: aString ifAbsent: [Transcript show: '		'''; show: aString; show: ''' -> ''''.'; cr.
				self error: 'unknown C type ', aString.
				'invalid' ].