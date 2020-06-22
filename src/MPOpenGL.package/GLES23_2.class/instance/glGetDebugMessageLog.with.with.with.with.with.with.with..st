commands
glGetDebugMessageLog: count with: bufSize with: sources with: types with: ids with: severities with: lengths with: messageLog

	<apicall: GLuint 'glGetDebugMessageLog' (GLuint GLsizei GLenum* GLenum* GLuint* GLenum* GLsizei* GLchar*)>
	^ self externalCallFailed