before each
setUpWindow
	| SCR_WIDTH SCR_HEIGHT framebuffer_size_callback mouse_callback scroll_callback |	
	self initGlfwWindow.
	
	"window width and height"
	SCR_WIDTH := 1000.
	SCR_HEIGHT := 1000.
		
	"actually creating the window"
	window := GLFW
				createWindow: SCR_WIDTH
				height: SCR_HEIGHT
				title: 'LearnOpenGL'
				and: nil
				and: nil.
	window
		ifNil: [self error: 'window was nil'].
	
	"callback inits"
	framebuffer_size_callback := [].
	mouse_callback := [].
	scroll_callback := [].
	
	GLFW makeContextCurrent: window.
	GLFW setFramebufferSizeCallback: window with: framebuffer_size_callback.
	GLFW setCursorPosCallback: window with: mouse_callback.
	GLFW setScrollCallback: window with: scroll_callback.
	
	"tell GLFW to capture our mouse"
	GLFW
		setInputMode: window
		with: GLFW _CURSOR
		with: GLFW _CURSOR_DISABLED