as yet unclassified
bindingOf: varName

	| aSymbol |
	aSymbol := varName asSymbol.
	(super bindingOf: aSymbol) ifNotNil: [:it | ^ it].
	^ self superclass bindingOf: aSymbol