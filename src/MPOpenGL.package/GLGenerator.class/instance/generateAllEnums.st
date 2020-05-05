as yet unclassified
generateAllEnums
	registry tagsNamed: #enums do: [ :enumsTag | enumsTag tagsNamed: #enum do: [ :enumTag | self generateEnum: enumTag ] ].
