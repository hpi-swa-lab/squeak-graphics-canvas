public
generateApi: aString

	api := aString asUppercase.
	self removeOldFeatureClasses.
	currentFeatureClass := self rootFeatureClass.
	definedEnums := Set new.
	definedCommands := Set new.

	self api: api featuresDo: [:feature | self feature: feature].
	
	self generateConstantsPool