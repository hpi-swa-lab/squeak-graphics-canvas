before each
initGlfwWindow
	GLFW init.
	GLFW windowHint: GLFW _CONTEXT_VERSION_MAJOR with: 3.
	GLFW windowHint: GLFW _CONTEXT_VERSION_MINOR with: 3.
	GLFW windowHint: GLFW _OPENGL_PROFILE with: GLFW _OPENGL_CORE_PROFILE.
	GLFW windowHint: GLFW _OPENGL_FORWARD_COMPAT with: GL _TRUE.