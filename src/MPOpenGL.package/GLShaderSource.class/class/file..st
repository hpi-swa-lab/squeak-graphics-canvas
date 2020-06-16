instance creation
file: aFileName

	^ self new
		readCodeFromFile: aFileName;
		yourself