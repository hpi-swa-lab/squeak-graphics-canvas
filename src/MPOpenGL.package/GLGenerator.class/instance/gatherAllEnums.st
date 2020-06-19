initialization
gatherAllEnums

	enumTags := Dictionary new.
	registry tagsNamed: #enums do: [:enumsTag |
		enumsTag tagsNamed: #enum do: [:enumTag |
			| name |
			name := enumTag attributeAt: #name.
			enumTags at: name put: enumTag]]