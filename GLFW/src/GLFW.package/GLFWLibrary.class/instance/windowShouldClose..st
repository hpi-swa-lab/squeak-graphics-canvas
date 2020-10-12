api - windows
windowShouldClose: window

	<apicall: bool 'glfwWindowShouldClose' (GLFWWindow*)>
	^ self externalCallFailed