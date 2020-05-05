as yet unclassified
paramType: anElement
	| result |
	result := ''.
	anElement elementsAndContentsDo: [ :part | part isText
		ifTrue: [ result := result , part ]
		ifFalse: [ part tag = #ptype ifTrue: [ result := result , part contentString ]]].
	^ self convertType: (result withBlanksTrimmed)
