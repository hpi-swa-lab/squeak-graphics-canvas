commands
glGetnMapiv: target with: query with: bufSize with: v

	<apicall: void 'glGetnMapiv' (GLenum GLenum GLsizei GLint*)>
	^ self externalCallFailed