before each
setUp
	super setUp.
	gl := self glVersion new.
	renderBuffer := self renderBufferClass newFor: gl.