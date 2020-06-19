initialization
gatherAllFeatures

	featureTags := Dictionary new.
	registry tagsNamed: #feature do: [:feature |
		featureTags
			at: (feature attributeAt: #api) asUppercase
			ifPresent: [:features | features add: feature]
			ifAbsentPut: [OrderedCollection with: feature]]