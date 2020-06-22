code from file
readCodeFromFile: aFileName

	self code: (FileStream fileNamed: aFileName) contentsOfEntireFile