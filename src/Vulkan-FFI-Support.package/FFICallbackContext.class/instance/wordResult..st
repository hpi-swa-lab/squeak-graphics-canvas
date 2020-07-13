callback result
wordResult: aValue
	"Accept any value in the -2^31 to 2^32-1 range or booleans."

	aValue isBoolean ifTrue:
		[self rvs booleanResult: aValue].
	
	aValue isInteger ifTrue:
		[aValue >= 0
			ifTrue: [self rvs positiveIntegerResult: aValue]
			ifFalse: [self rvs integerResult: aValue]].

	^1