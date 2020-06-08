initialize
destroy
	glExt ifNotNil:[
		glExt ogl: nil.
		glExt := nil].
	usesGLFW ifTrue: [ GLFW destroyWindow: handle ].
	self primDestroyRenderer: handle.
	handle := nil.
