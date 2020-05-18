initialize-release
setUpProgram
	| attachedShaders status |
	self createProgram.
	self shareGlInstance.
	attachedShaders := self attachShaders.
	gl glLinkProgram: id.
	status := IntegerArray new: 1.
	gl glGetProgramiv: id with: (gl GL_LINK_STATUS) with: status.
	(status at: 1) = 0 ifTrue: [self error: 'failed to link shader'].
	self deleteShaders: attachedShaders.