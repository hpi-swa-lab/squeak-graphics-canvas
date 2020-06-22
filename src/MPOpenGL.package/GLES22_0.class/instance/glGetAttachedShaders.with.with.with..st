commands
glGetAttachedShaders: program with: maxCount with: count with: shaders

	<apicall: void 'glGetAttachedShaders' (GLuint GLsizei GLsizei* GLuint*)>
	^ self externalCallFailed