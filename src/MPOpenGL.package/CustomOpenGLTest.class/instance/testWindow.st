testing
testWindow
	"given"
	"when"
	| win ver |
	GLFW init.
	win := GLFW
				createWindowWidth: 640
				height: 480
				title: 'ABC'
				monitor: nil
				share: nil.
	GLFW makeContextCurrent: win.
	GL
		clearColorRed: 0
		green: 1
		blue: 0
		alpha: 1.
	GL clear: GL COLOR_BUFFER_BIT.
	ver := GL getString: GL VERSION.
	GLFW swapBuffers: win.
	"cleanup"
	GLFW terminate.
	"then"
	ver isKindOf: String