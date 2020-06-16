accessing
activate: aContext during: aBlock
	| oldContext |
	oldContext := GLFW getCurrentContext.
	[ GLFW makeContextCurrent: aContext glfwWindow.
	  aBlock value ] ensure: [ GLFW makeContextCurrent: oldContext ]