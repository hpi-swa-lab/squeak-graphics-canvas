before each
enableGLFWMouseCapture
	"tell GLFW to capture our mouse"
	GLFW
		setInputMode: window
		with: GLFW CURSOR
		with: GLFW CURSOR_DISABLED