commands
glPushAttrib: mask

	<apicall: void 'glPushAttrib' (GLbitfield)>
	^ self externalCallFailed