commands
glColor3bv: v

	<apicall: void 'glColor3bv' (GLbyte*)>
	^ self externalCallFailed