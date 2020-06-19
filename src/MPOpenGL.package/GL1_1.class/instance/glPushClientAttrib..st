commands
glPushClientAttrib: mask

	<apicall: void 'glPushClientAttrib' (GLbitfield)>
	^ self externalCallFailed