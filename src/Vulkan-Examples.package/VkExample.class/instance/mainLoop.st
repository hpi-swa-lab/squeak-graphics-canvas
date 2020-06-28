as yet unclassified
mainLoop

	[(GLFW windowShouldClose: window) ~= 0] whileFalse: [GLFW pollEvents]