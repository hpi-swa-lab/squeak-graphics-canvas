commands
glGetDoublev: pname with: data

	<apicall: void 'glGetDoublev' (GLenum GLdouble*)>
	^ self externalCallFailed