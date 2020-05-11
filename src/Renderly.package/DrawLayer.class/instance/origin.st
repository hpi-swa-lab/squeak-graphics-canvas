accessing
origin
	"distance to global origin"
	^ origin ifNil: [self parent origin]