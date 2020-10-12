api - windows
makeContextCurrent: window

	<apicall: void 'glfwMakeContextCurrent' (GLFWWindow*)>
	^ self externalCallFailed