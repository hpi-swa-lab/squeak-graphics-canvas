initialize
destroy
	glExt ifNotNil:[
		glExt ogl: nil.
		glExt := nil].
	(handle isKindOf: ExternalData) ifTrue: [ GLFW destroyWindow: handle ].
	self primDestroyRenderer: handle.
	handle := nil.