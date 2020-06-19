commands
glDeleteFramebuffers: n with: framebuffers

	<apicall: void 'glDeleteFramebuffers' (GLsizei GLuint*)>
	^ self externalCallFailed