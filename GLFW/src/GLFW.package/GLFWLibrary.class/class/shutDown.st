system startup
shutDown

	Smalltalk
		at: #GLFW
		ifPresent: [:lib |
			[lib terminate] ifError: ["do nothing"]]