initialization
gatherAllCommands

	commandTags := Dictionary new.
	registry tagsNamed: #commands do: [:commandsTag |
		commandsTag tagsNamed: #command do: [:commandTag |
			| protoTag name |
			protoTag := commandTag firstTagNamed: #proto.
			name := (protoTag firstTagNamed: #name) contentString.
			commandTags at: name put: commandTag]]