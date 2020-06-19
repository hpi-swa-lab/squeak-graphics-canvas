commands
glCompileShader: shader

	<apicall: void 'glCompileShader' (GLuint)>
	^ self externalCallFailed