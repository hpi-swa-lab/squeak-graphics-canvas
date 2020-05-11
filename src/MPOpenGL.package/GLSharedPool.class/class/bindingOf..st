as yet unclassified
bindingOf: varName
	| aSymbol |
	aSymbol := varName asSymbol.
    (super bindingOf: aSymbol) ifNotNil: [ :it | ^it ].
	self allSuperclassesDo: [:cls | (cls bindingOf: aSymbol) ifNotNil: [:b | ^ b]].
    ^nil