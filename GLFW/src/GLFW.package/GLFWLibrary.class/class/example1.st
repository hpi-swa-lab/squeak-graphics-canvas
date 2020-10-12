examples
example1 "self example1"
	"A minimal GLFW example window. Dismiss by clicking anywhere inside Squeak.
	Do NOT force quit the window (unless you want your Squeak to force quit too)."
	| window |
	[
		window := GLFWWindow
					width: 400
					height: 400
					title: 'GLFW example1'.
		GLFW getError ~= NO_ERROR ifTrue: [
			^ self error: 'GLFW Error'].
		[Sensor anyButtonPressed] whileFalse
	] ensure: [
		window ifNotNil: [GLFW destroyWindow: window]]