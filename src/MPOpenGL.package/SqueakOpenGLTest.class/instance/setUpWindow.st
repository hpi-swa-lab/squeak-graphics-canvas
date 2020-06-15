before each
setUpWindow
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	bounds := 0@0 extent: 1000 asPoint.
	true
		ifTrue: [
			ogl := GL4_6 newIn: bounds.]
		ifFalse: [
			GLFW init.
			ogl := GL4_6 newInGLFW: (0 @ 0 extent: 640@480)]