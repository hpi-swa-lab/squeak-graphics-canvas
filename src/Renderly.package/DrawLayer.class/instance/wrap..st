accessing
wrap: aLayer

	aLayer parent commands replace: [:cmd |
		cmd == aLayer ifTrue: [self] ifFalse: [cmd]].
	self addCommand: aLayer