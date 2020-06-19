commands
glBindFramebuffer: target with: framebuffer

	<apicall: void 'glBindFramebuffer' (GLenum GLuint)>
	^ self externalCallFailed