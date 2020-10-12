callbacks
mouseButtonCallback: aBlock

	GLFW
		setMouseButtonCallback: window
		with: (callbacks
			at: #mouseButton
			put: (FFICallback
				signature: '<callback: void (*)(void* long long long)>'
				block: [:win :button :action :mods |
					aBlock value: (1 bitShift: button - 1) value: action = 1 value: mods])) thunk