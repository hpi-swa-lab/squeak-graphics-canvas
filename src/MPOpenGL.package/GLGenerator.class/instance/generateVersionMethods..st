code generation
generateVersionMethods: aVersion

	| splitVersion |
	splitVersion := aVersion subStrings: '.'.
	previousClass compile: 'majorVersion
	^ ', splitVersion first.
	previousClass compile: 'minorVersion
	^ ', splitVersion second.
