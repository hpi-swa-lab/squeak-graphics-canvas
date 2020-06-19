commands
glGetProgramStageiv: program with: shadertype with: pname with: values

	<apicall: void 'glGetProgramStageiv' (GLuint GLenum GLenum GLint*)>
	^ self externalCallFailed