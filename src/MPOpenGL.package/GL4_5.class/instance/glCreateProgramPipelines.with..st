commands
glCreateProgramPipelines: n with: pipelines

	<apicall: void 'glCreateProgramPipelines' (GLsizei GLuint*)>
	^ self externalCallFailed