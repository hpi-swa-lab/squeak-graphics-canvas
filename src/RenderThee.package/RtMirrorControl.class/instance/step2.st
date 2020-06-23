stepping
step2

	renderer shouldClose
		ifTrue: [self delete]
		ifFalse: [renderer renderFrame]