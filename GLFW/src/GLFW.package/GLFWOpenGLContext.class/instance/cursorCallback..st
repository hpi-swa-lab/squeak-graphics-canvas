callbacks
cursorCallback: aBlock

	GLFW
		setCursorPosCallback: window
		with: (callbacks
			at: #cursorPos
			put: (FFICallback
				signature: '<callback: void (*)(void* double double)>'
				block: [:win :x :y | aBlock value: x value: y])) thunk