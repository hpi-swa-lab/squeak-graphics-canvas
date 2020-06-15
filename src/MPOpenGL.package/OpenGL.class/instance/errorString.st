debugging
errorString

	| error |
	error := self glGetError.
	^ (error ~= GLNoError)
		ifTrue: [self gluErrorString: error]
		ifFalse: [nil]
