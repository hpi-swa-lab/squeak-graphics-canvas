initialize-release
destroy

	super destroy.
	window ifNotNil: [ GLFW destroyWindow: window ].
	window := nil