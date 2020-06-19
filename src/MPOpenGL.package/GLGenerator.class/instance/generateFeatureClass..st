code generation
generateFeatureClass: featureTag

	| className version |
	version := featureTag attributeAt: #number.
	className := (self classNamePrefix , (version copyReplaceAll: '.' with: '_')) asSymbol.
	^ (self environment classNamed: className)
		ifNil: [
			currentFeatureClass
				subclass: className
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: self systemCategoryName]
		ifNotNil: [
			self error: 'Class with this name already exists']