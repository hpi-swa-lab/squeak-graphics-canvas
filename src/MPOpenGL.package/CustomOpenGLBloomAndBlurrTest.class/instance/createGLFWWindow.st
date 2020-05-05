before each
createGLFWWindow
	| SCR_WIDTH SCR_HEIGHT |	
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