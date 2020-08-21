transforming rects
localBoundsToGlobal: aRectangle
	"not the prettiest method, but quite a bit faster than super"
	| minX minY maxX maxY pt |
	self isPureTranslation ifTrue: [
		"atm most transforms in use are pure translations, making this fast path well worth it"
		^ (self localPointToGlobal: aRectangle topLeft)
			corner: (self localPointToGlobal: aRectangle bottomRight)].
	
	pt := self localPointToGlobal: aRectangle topLeft.
	minX := maxX := pt x.
	minY := maxY := pt y.
	
	pt := self localPointToGlobal: aRectangle topRight.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	pt := self localPointToGlobal: aRectangle bottomRight.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	pt := self localPointToGlobal: aRectangle bottomLeft.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	^ Rectangle origin: (minX @ minY) corner: (maxX @ maxY)