instance creation
width: width height: height title: aString monitor: monitor share: window

	^ self window: (GLFW
					createWindow: width
					with: height
					with: aString
					with: monitor
					with: window)