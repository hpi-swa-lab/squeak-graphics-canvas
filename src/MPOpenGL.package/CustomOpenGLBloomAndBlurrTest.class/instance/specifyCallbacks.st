before each
specifyCallbacks
	| framebuffer_size_callback mouse_callback scroll_callback |	
	"callback inits"
	framebuffer_size_callback := [].
	mouse_callback := [].
	scroll_callback := [].
	
	GLFW makeContextCurrent: window.
	GLFW setFramebufferSizeCallback: window with: framebuffer_size_callback.
	GLFW setCursorPosCallback: window with: mouse_callback.
	GLFW setScrollCallback: window with: scroll_callback.