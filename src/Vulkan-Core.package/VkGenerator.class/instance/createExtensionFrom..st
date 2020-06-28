as yet unclassified
createExtensionFrom: aTag

	aTag
		tagsNamed: #enum
		do: [:enum | | value |
			SBLabel text: [
				'TODO: we only consider extending props, not new ones'].
			(enum attributeAt: #extends) ifNotNil: [
				value := (enum attributeAt: #offset)
					ifNotNil: [:offset | | extBase extBlockSize extnumber |
						SBLabel text: ['not currently handled'].
						self assert: (enum attributeAt: #dir) isNil.
						extBase := 1000000000.
						extBlockSize := 1000.
						extnumber := enum attributeAt: #extnumber ifAbsent: [(aTag attributeAt: #number) asInteger].
						extBase + (((extnumber - 1) * extBlockSize) + offset)]
					ifNil: [enum attributeAt: #value].
				(Smalltalk at: (enum attributeAt: #extends) asSymbol) class compile: (String streamContents: [:stream |
					stream
						nextPutAll: (enum attributeAt: #name);
						cr;
						cr;
						tab;
						nextPutAll: '^ self on: (';
						nextPutAll: value asString;
						nextPut: $)])]]