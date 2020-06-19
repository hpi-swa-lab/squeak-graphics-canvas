commands
glShaderBinary: count with: shaders with: binaryformat with: binary with: length

	<apicall: void 'glShaderBinary' (GLsizei GLuint* GLenum void* GLsizei)>
	^ self externalCallFailed