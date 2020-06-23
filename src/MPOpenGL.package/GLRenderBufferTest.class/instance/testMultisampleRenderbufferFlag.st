tests
testMultisampleRenderbufferFlag
	| before |
	"given"
	"when"
	before := renderBuffer isMultisampleRenderBuffer.
	renderBuffer samples: 2.
	"then"
	self assert: before not.
	self assert: renderBuffer isMultisampleRenderBuffer