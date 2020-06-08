as yet unclassified
featureClass: anElement versionNumber: aString
	| className result splitVersion |
	className := (api asUppercase , (aString copyReplaceAll: '.' with: '_')) asSymbol.
	splitVersion := aString subStrings: '.'.
	^ Smalltalk
		at: className
		ifAbsent: [
			previousClass subclass: className
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'MPOpenGL'.
			result := Smalltalk at: className.
			previousClass := result.
			self addVersionMethods: aString.
			result ].