commands
glGetActiveSubroutineName: program with: shadertype with: index with: bufSize with: length with: name

	<apicall: void 'glGetActiveSubroutineName' (GLuint GLenum GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed