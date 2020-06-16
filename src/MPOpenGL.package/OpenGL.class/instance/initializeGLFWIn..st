initialize
initializeGLFWIn: bounds
	usesGLFW := true.
	
	GLFW init.
	GLFW windowHint: GLFW CONTEXT_VERSION_MAJOR value: self majorVersion.
	GLFW windowHint: GLFW CONTEXT_VERSION_MINOR value: self minorVersion.
	
	myHandle := GLFW createWindowWidth: bounds width height: bounds height title: 'GLFW Window' monitor: nil share: nil.
	GLFW makeContextCurrent: myHandle.
	GLFW swapInterval: 1.
	
	"GLFW setCursorPosCallback: myHandle with: (Callback signature: #(void (*)(const void *, double, double)) block: [:win :x :y | Transcript showln: {'move'. x. y}]) thunk.
	GLFW setMouseButtonCallback: myHandle with: (Callback signature: #(void (*)(const void *, int, int, int)) block: [:win :x :y :z | Transcript showln: {'click'. x. y. z}]) thunk."
	
	bufRect := bounds.
	myHandle ifNotNil: [glExt := OGLExtManager new ogl: self].
	^myHandle ifNotNil: [self]
