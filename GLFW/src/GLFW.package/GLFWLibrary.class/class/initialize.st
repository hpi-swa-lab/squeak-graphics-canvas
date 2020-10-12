class initialization
initialize

	Smalltalk addToShutDownList: self.
	Smalltalk addToStartUpList: self.
	Smalltalk at: #GLFW put: self new.
	self startUp