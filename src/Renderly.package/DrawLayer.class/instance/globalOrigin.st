accessing
globalOrigin

	^ self isRoot
		ifTrue: [0 @ 0]
		ifFalse: [self parent globalOrigin + self origin]