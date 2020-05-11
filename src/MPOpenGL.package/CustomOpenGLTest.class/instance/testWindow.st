testing
testWindow
	"given"
	"when"
	| ver |
	GL glClearColor: 0 with: 1 with: 0 with: 1.
	GL glClear: GL GL_COLOR_BUFFER_BIT.
	ver := GL glGetString: GL GL_VERSION.
	GLFW swapBuffers: window.
	"then"
	Transcript show: ver; cr.
	ver isKindOf: String