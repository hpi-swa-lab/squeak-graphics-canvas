commands
glColor4dv: v

	<apicall: void 'glColor4dv' (GLdouble*)>
	^ self externalCallFailed