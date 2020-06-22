usage
uniform: location value: anObject

	self assert: location >= 0.
	anObject putAtGL: gl Uniform: location