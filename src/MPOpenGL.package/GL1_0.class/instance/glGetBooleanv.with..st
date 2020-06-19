commands
glGetBooleanv: pname with: data

	<apicall: void 'glGetBooleanv' (GLenum GLboolean*)>
	^ self externalCallFailed