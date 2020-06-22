commands
glGetMultisamplefv: pname with: index with: val

	<apicall: void 'glGetMultisamplefv' (GLenum GLuint GLfloat*)>
	^ self externalCallFailed