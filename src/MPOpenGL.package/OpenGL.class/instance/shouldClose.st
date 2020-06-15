accessing
shouldClose

	^ usesGLFW ifTrue: [(GLFW windowShouldClose: myHandle) ~= 0] ifFalse: [false]