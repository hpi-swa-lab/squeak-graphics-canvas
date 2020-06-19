commands
glGenQueries: n with: ids

	<apicall: void 'glGenQueries' (GLsizei GLuint*)>
	^ self externalCallFailed