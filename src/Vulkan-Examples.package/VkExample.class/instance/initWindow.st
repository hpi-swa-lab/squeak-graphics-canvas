as yet unclassified
initWindow

	GLFW init.
	GLFW windowHint: GLFW GLFW_CLIENT_API with: GLFW GLFW_NO_API.
	window := GLFW createWindowWidth: 800 height: 600 title: 'Vulkan' monitor: nil share: nil