code generation
compileVersionMethods: aVersion

	| majorMinor |
	majorMinor := aVersion subStrings: '.'.
	currentFeatureClass compile: 'majorVersion

	^ ', majorMinor first classified: 'version'.
	currentFeatureClass compile: 'minorVersion

	^ ', majorMinor second classified: 'version'.
