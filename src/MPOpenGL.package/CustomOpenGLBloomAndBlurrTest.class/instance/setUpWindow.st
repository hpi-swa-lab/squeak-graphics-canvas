before each
setUpWindow
	GLFW init.
	self setGlfwWindowHints.
	self createGLFWWindow.
	"self specifyCallbacks."
	"self enableGLFWMouseCapture."
	GLFW makeContextCurrent: window