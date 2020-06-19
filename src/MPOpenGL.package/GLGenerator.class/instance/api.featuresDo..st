helpers
api: aString featuresDo: aBlock

	featureTags
		at: aString
		ifPresent: [:features | features do: aBlock]
		ifAbsent: [self error: 'No such api in the provided xml']