commands
glLighti: light with: pname with: param

	<apicall: void 'glLighti' (GLenum GLenum GLint)>
	^ self externalCallFailed