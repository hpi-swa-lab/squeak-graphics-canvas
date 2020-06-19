code generation
removeOldFeatureClasses

	self rootFeatureClass allSubclassesDo: [:cls | cls removeFromSystem]