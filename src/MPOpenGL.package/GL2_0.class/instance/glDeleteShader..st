commands
glDeleteShader: shader

	<apicall: void 'glDeleteShader' (GLuint)>
	^ self externalCallFailed