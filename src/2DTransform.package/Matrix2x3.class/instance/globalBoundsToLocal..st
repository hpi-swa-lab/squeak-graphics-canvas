transforming rects
globalBoundsToLocal: aRectangle
	"not the prettiest method, but quite a bit faster than super"
	| minX minY maxX maxY pt |
	self isPureTranslation ifTrue: [
		"atm most transforms in use are pure translations, making this fast path well worth it"
		^ (self globalPointToLocal: aRectangle topLeft)
			corner: (self globalPointToLocal: aRectangle bottomRight)].
	
	pt := self globalPointToLocal: aRectangle topLeft.
	minX := maxX := pt x.
	minY := maxY := pt y.
	
	pt := self globalPointToLocal: aRectangle topRight.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	pt := self globalPointToLocal: aRectangle bottomRight.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	pt := self globalPointToLocal: aRectangle bottomLeft.
	minX := minX min: pt x.
	maxX := maxX max: pt x.
	minY := minY min: pt y.
	maxY := maxY max: pt y.
	
	^ Rectangle origin: (minX @ minY) corner: (maxX @ maxY)