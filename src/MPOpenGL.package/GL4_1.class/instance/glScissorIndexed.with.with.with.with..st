commands
glScissorIndexed: index with: left with: bottom with: width with: height

	<apicall: void 'glScissorIndexed' (GLuint GLint GLint GLsizei GLsizei)>
	^ self externalCallFailed