as yet unclassified
createCommands

	registry
		tagsNamed: #commands
		do: [:commands |
			commands tagsNamed: #command do: [:command | self createCommandMethod: command]]