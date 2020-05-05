before each
loadGlFunctionPointers
	(Glad loadGLLoader: GLFW getProcAddress) ifNil: [
		self error: 'Could not initialize glad'].