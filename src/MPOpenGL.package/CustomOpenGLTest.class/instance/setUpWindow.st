before each
setUpWindow
	GLFW init.
	window := GLFW
				createWindowWidth: 640
				height: 480
				title: 'ABC'
				monitor: nil
				share: nil.
	GLFW makeContextCurrent: window