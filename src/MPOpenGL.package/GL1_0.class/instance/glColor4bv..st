commands
glColor4bv: v

	<apicall: void 'glColor4bv' (GLbyte*)>
	^ self externalCallFailed