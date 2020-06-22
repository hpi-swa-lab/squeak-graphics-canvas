commands
glGenBuffers: n with: buffers

	<apicall: void 'glGenBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed