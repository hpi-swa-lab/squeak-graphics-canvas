before each
setUpWindow
	GLFW init.
	ogl := GL3_3 newInGLFW: 640@480.
	"self specifyCallbacks."
	"self enableGLFWMouseCapture."
	ogl beginFrame