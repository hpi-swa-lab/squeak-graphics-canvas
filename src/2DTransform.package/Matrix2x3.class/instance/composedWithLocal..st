composing
composedWithLocal: aTransformation
	"Return the composition of the receiver and the local transformation passed in"
	^ self shallowCopy composeWithLocal: aTransformation asMatrix2x3