before each
setUpWindow
	    
    | SCR_WIDTH SCR_HEIGHT framebuffer_size_callback mouse_callback scroll_callback |
    GLFW init.
    GLFW windowHint: GLFW _CONTEXT_VERSION_MAJOR with: 3.
    GLFW windowHint: GLFW _CONTEXT_VERSION_MINOR with: 3.
    GLFW windowHint: GLFW _OPENGL_PROFILE with: GLFW _OPENGL_CORE_PROFILE.
    GLFW windowHint: GLFW _OPENGL_FORWARD_COMPAT with: GL _TRUE.

    window := GLFW createWindow: SCR_WIDTH height: SCR_HEIGHT title: 'LearnOpenGL' and: nil and: nil.
    window ifNil: [ self error: 'window was nil' ].

    GLFW makeContextCurrent: window.
    GLFW setFramebufferSizeCallback: window with: framebuffer_size_callback.
    GLFW setCursorPosCallback: window with: mouse_callback.
    GLFW setScrollCallback: window with: scroll_callback.

    "tell GLFW to capture our mouse"
    GLFW setInputMode: window with: GLFW _CURSOR with: GLFW _CURSOR_DISABLED.