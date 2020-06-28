as yet unclassified
createExtension: aString

	registry
		tagsNamed: #extension
		do: [:extension |
			(extension attributeAt: #name) = aString ifTrue: [self createExtensionFrom: extension]]