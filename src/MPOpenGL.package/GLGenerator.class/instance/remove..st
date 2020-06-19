features
remove: removeTag

	removeTag elements do: [:elem |
		| name |
		name := elem attributeAt: #name.
		elem tag caseOf: {
			[#command] -> [self removeCommand: name].
			[#enum] -> [self removeEnum: name].
			[#type] -> ["ignore"]}]