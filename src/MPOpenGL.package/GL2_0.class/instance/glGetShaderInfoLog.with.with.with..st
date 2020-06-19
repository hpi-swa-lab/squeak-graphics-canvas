commands
glGetShaderInfoLog: shader with: bufSize with: length with: infoLog

	<apicall: void 'glGetShaderInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed