commands
glDeleteProgramPipelines: n with: pipelines

	<apicall: void 'glDeleteProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed