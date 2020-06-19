commands
glDeleteSamplers: count with: samplers

	<apicall: void 'glDeleteSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed