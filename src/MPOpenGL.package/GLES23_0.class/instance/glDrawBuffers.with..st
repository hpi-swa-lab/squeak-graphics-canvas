commands
glDrawBuffers: n with: bufs

	<apicall: void 'glDrawBuffers' (GLsizei GLenum*)>
	^ self externalCallFailed