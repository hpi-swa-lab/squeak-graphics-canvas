commands
glGetMapiv: target with: query with: v

	<apicall: void 'glGetMapiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed