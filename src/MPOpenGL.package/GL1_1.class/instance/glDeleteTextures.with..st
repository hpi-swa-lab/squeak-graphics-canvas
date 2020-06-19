commands
glDeleteTextures: n with: textures

	<apicall: void 'glDeleteTextures' (GLsizei GLuint*)>
	^ self externalCallFailed