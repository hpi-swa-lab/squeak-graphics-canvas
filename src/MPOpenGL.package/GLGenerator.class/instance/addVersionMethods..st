code generation
addVersionMethods: aVersion
	| splitVersion |

	splitVersion := aVersion subStrings: '.'.
	previousClass compile: 'majorVersion ^', (splitVersion at: 1).
	previousClass compile: 'minorVersion ^', (splitVersion at: 2).
