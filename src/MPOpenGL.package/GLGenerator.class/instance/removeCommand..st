features
removeCommand: name

	definedCommands remove: name ifAbsent: [^ self].
	currentFeatureClass
		compile: (self generateDeprecationMethod: name)
		classified: 'commands - deprecated'