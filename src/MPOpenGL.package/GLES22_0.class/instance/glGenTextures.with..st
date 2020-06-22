commands
glGenTextures: n with: textures

	<apicall: void 'glGenTextures' (GLsizei GLuint*)>
	^ self externalCallFailed