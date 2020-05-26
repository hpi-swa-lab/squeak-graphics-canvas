initialize
initializeGLFWIn: bounds
	handle := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	bufRect := bounds.
	handle ifNotNil: [glExt := OGLExtManager new ogl: self].
	^handle ifNotNil: [self]