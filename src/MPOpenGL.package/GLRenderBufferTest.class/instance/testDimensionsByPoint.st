tests
testDimensionsByPoint
	"given"
	"when"
	renderBuffer
		dimensions: 5@6.
	"then"
	self
		assert: renderBuffer height
		equals: 6
		description: 'Height cannot read from Point'.
	self
		assert: renderBuffer width
		equals: 5
		description: 'Width cannot read from Point'