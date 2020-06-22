commands
glCreateShaderProgramv: type with: count with: strings

	<apicall: GLuint 'glCreateShaderProgramv' (GLenum GLsizei GLchar**)>
	^ self externalCallFailed