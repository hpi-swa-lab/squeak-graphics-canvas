commands
glGenSamplers: count with: samplers

	<apicall: void 'glGenSamplers' (GLsizei GLuint*)>
	^ self externalCallFailed