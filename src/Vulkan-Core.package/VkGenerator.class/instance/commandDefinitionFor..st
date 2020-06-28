as yet unclassified
commandDefinitionFor: aString

	registry tagsNamed: #command do: [:command |
		(command attributeAt: #name) = aString ifTrue: [^ command]].
	^ self error: 'method definition not found'