system startup
startUp

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib init] ifError: ["do nothing"]]