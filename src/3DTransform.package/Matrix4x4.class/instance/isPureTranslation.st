testing
isPureTranslation

	"
	1 0 0
	0 1 0
	0 0 1"
	^ self a11 = 1 and: [self a12 = 0 and: [self a13 = 0 and: [self a21 = 0 and: [self a22 = 1 and: [self a23 = 0 and: [self a31 = 0 and: [self a32 = 0 and: [self a33 = 1]]]]]]]]