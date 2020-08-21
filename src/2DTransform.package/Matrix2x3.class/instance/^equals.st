comparing
= aMatrix2x3

	self == aMatrix2x3 ifTrue: [^ true].
	self species == aMatrix2x3 species ifFalse: [^ false].
	a11 = aMatrix2x3 a11 ifFalse: [^ false].
	a12 = aMatrix2x3 a12 ifFalse: [^ false].
	a13 = aMatrix2x3 a13 ifFalse: [^ false].
	a21 = aMatrix2x3 a21 ifFalse: [^ false].
	a22 = aMatrix2x3 a22 ifFalse: [^ false].
	a23 = aMatrix2x3 a23 ifFalse: [^ false].
	^ true