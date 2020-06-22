commands
glGetProgramPipelineInfoLog: pipeline with: bufSize with: length with: infoLog

	<apicall: void 'glGetProgramPipelineInfoLog' (GLuint GLsizei GLsizei* GLchar*)>
	^ self externalCallFailed