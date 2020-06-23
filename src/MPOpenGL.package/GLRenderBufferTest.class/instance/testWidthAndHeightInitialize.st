tests
testWidthAndHeightInitialize
	"given"
	"when"
	"then"
	self assert: (renderBuffer height) equals: 0 description: 'Height not 0 if not provided'.
	self assert: (renderBuffer width) equals: 0 description: 'Width not 0 if not provided'.