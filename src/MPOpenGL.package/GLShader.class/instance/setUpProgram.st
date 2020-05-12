initialize-release
setUpProgram
	| attachedShaders |
	self createProgram.
	self shareGlInstance.
	attachedShaders := self attachShaders.
	self deleteShaders: attachedShaders.