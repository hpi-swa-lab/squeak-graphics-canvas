accessing
dimensions: dimensions
	"provide some nice2have methods to generate Renderbuffers
	with Rectangles and Points"
	(dimensions isKindOf: Rectangle) ifTrue: [
		width := dimensions corner x - dimensions origin x.
		height := dimensions corner y - dimensions origin y.
		^self].
	(dimensions isKindOf: Point) ifTrue: [
		width := dimensions x.
		height := dimensions y.
		^self].
	self error: 'Invalid dimensions provided'.