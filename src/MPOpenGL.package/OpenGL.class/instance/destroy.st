initialize
destroy
	glExt ifNotNil:[
		glExt ogl: nil.
		glExt := nil].
	usesGLFW ifTrue: [ GLFW destroyWindow: myHandle ].
	self primDestroyRenderer: myHandle.
	handle := nil.