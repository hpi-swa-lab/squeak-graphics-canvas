as yet unclassified
generateAllCommands
	registry tagsNamed: #commands do: [ :commandsTag | commandsTag tagsNamed: #command do: [ :commandTag | self generateCommand: commandTag ] ].
