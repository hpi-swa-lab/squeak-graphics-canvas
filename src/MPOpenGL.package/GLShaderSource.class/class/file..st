instance creation
file: aFileName
	| instance |
	instance := self new.
	instance readCodeFromFile: aFileName.
	^instance