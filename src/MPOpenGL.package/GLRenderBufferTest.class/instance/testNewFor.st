tests
testNewFor
	| buffer gl |
	"given"
	gl := self glVersion new.
	"when"
	buffer := self renderBufferClass newFor: gl.
	"then"
	self assert: (buffer gl) equals: gl description: 'GL Versions are the same'