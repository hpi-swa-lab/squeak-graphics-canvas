accessing
makeCurrentDuring: aBlock
	| oldContext |
	oldContext := GLFW getCurrentContext.
	[ GLFW makeContextCurrent: self glfwWindow.
	  GL value: self during: aBlock ] ensure: [ GLFW makeContextCurrent: oldContext ]