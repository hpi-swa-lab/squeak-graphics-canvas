commands
glSpecializeShader: shader with: pEntryPoint with: numSpecializationConstants with: pConstantIndex with: pConstantValue

	<apicall: void 'glSpecializeShader' (GLuint GLchar* GLuint GLuint* GLuint*)>
	^ self externalCallFailed