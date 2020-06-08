initialize
initializeGLFWIn: bounds
	usesGLFW := true.
	GLFW windowHint: GLFW CONTEXT_VERSION_MAJOR value: self majorVersion.
	GLFW windowHint: GLFW CONTEXT_VERSION_MINOR value: self minorVersion.
	handle := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	bufRect := bounds.
	handle ifNotNil: [glExt := OGLExtManager new ogl: self].
	^handle ifNotNil: [self]