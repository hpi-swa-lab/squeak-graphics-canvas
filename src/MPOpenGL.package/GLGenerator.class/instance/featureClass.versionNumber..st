code generation
featureClass: anElement versionNumber: aString

	| className |
	className := (api asUppercase , (aString copyReplaceAll: '.' with: '_')) asSymbol.
	^ (self environment classNamed: className) ifNil: [
		previousClass := previousClass
							subclass: className
							instanceVariableNames: ''
							classVariableNames: ''
							poolDictionaries: ''
							category: self systemCategoryName.
		self generateVersionMethods: aString.
		previousClass]