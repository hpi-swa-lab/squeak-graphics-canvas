commands
glDeleteBuffers: n with: buffers

	<apicall: void 'glDeleteBuffers' (GLsizei GLuint*)>
	^ self externalCallFailed