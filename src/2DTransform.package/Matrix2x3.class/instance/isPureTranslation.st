testing
isPureTranslation

	a11 = 1.0 ifFalse: [^ false].
	a22 = 1.0 ifFalse: [^ false].
	a12 = 0.0 ifFalse: [^ false].
	^ a21 = 0.0