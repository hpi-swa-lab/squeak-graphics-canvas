commands
glViewportArrayv: first with: count with: v

	<apicall: void 'glViewportArrayv' (GLuint GLsizei GLfloat*)>
	^ self externalCallFailed