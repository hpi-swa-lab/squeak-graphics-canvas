tests
testDimensionsAreRectangle
	"given"
	"when"
	renderBuffer
		dimensions: (1 @ 4 extent: 2 @ 6).
	"then"
	self
		assert: renderBuffer height
		equals: 6
		description: 'Height cannot read from Rectangle'.
	self
		assert: renderBuffer width
		equals: 2
		description: 'Width cannot read from Rectangle'