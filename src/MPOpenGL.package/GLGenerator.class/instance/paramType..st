helpers
paramType: anElement

	| result |
	result := String streamContents: [:stream |
		anElement elementsAndContentsDo: [:part |
			part isText
				ifTrue: [stream nextPutAll: part string]
				ifFalse: [
					part tag = #ptype ifTrue: [
						stream nextPutAll: part contentString]]]].
	^ (result copyReplaceAll: 'const' with: '') copyReplaceAll: ' ' with: ''