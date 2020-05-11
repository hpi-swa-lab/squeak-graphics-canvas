as yet unclassified
featureClass: anElement versionNumber: aString
	| className result |
	className := (api asUppercase , (aString copyReplaceAll: '.' with: '_')) asSymbol.
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
			result ].