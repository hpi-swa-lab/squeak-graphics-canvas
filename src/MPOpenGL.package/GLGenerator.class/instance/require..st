features
require: requireTag

	requireTag elements do: [:elem |
		| name |
		name := elem attributeAt: #name.
		elem tag caseOf: {
			[#command] -> [self requireCommand: name].
			[#enum] -> [self requireEnum: name].
			[#type] -> ["ignore"]}]