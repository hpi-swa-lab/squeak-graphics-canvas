commands
glDeleteQueries: n with: ids

	<apicall: void 'glDeleteQueries' (GLsizei GLuint*)>
	^ self externalCallFailed