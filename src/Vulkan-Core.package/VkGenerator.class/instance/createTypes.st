as yet unclassified
createTypes

	registry tagsNamed: #types do: [:types |
		types tagsNamed: #type do: [:type | self createTypeFor: type]]