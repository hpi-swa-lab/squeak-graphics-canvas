commands
glGetString: name

	<apicall: GLubyte* 'glGetString' (GLenum)>
	^ self externalCallFailed