tests
testNewFor
	| buffer |
	"given"
	"when"
	buffer := self renderBufferClass newFor: gl.
	"then"
	self assert: (buffer gl) equals: gl description: 'GL Versions are the same'.
	"tear down"
	buffer delete.