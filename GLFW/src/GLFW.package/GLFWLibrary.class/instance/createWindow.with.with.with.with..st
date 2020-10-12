api - windows
createWindow: width with: height with: title with: monitor with: share

	<apicall: GLFWWindow* 'glfwCreateWindow' (int int string GLFWMonitor* GLFWWindow*)>
	^ self externalCallFailed