tests
testWidthAndHeightSetting
	"given"
	"when"
	renderBuffer height: 1.
	renderBuffer width: 2.
	"then"
	self assert: (renderBuffer height) equals: 1 description: 'Height cannot be set'.
	self assert: (renderBuffer width) equals: 2 description: 'Width cannot be set'.