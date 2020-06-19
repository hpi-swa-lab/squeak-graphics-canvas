commands
glColor4uiv: v

	<apicall: void 'glColor4uiv' (GLuint*)>
	^ self externalCallFailed