before each
setUpWindow
	ogl := GL3_3 newInGLFW: (Rectangle origin: 0@0 extent: 640@480).
	GLFW makeContextCurrent: ogl handle.
