initialize-release
initializeWindowState

	| oldContext |
	"we need to switch the active OpenGL context"
	oldContext := GL value ifNotNil: [:lib | lib context].
	oldContext ifNotNil: [oldContext deactivate].
	self activate.
	
	GLFW swapInterval: 0. "disable vsync"
	self initializeCallbacks.
	
	"switch back to the previously active OpenGL context"
	self deactivate.
	oldContext ifNotNil: [oldContext activate]