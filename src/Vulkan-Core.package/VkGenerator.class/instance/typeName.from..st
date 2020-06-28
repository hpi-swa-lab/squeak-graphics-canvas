as yet unclassified
typeName: aString from: member

	| typeName |
	typeName := aString.
	bitmaskTypes
		at: typeName
		ifPresent: [:actualType |
			SBLabel text: ['the *Bits and *Flags enums are both used?'].
			typeName := actualType name].
	(externalTypes includes: typeName) ifTrue: [typeName := 'void'].
	(member notNil and: [
		member contents anySatisfy: [:t | t string includes: $*]]) ifTrue: [typeName := typeName, '*'].
	^ typeName