commands
glGetFloatv: pname with: data

	<apicall: void 'glGetFloatv' (GLenum GLfloat*)>
	^ self externalCallFailed