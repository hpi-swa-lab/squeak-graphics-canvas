initialize
initializeGLFWIn: bounds
	usesGLFW := true.
	GLFW windowHint: GLFW CONTEXT_VERSION_MAJOR value: self majorVersion.
	GLFW windowHint: GLFW CONTEXT_VERSION_MINOR value: self minorVersion.
	myHandle := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	GLFW makeContextCurrent: myHandle.
	bufRect := bounds.
	myHandle ifNotNil: [glExt := OGLExtManager new ogl: self].
	^myHandle ifNotNil: [self]