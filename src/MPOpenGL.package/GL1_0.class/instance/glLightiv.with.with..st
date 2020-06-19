commands
glLightiv: light with: pname with: params

	<apicall: void 'glLightiv' (GLenum GLenum GLint*)>
	^ self externalCallFailed