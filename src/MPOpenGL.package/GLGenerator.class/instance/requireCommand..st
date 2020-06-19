features
requireCommand: name

	| methodSource |
	(definedCommands ifAbsentAdd: name) ifFalse: [^ self].
	methodSource := self generateCommandMethod: (commandTags at: name).
	currentFeatureClass
		compile: methodSource
		classified: 'commands'