public
generateApi: aString

	api := aString asUppercase.
	self removeOldFeatureClasses.
	currentFeatureClass := self rootFeatureClass.
	definedEnums := Set new.
	definedCommands := Set new.

	featureTags
		at: api
		ifPresent: [:features | features do: [:feature | self feature: feature]]
		ifAbsent: [self error: 'No such api in the provided xml']