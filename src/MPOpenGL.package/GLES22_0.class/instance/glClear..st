commands
glClear: mask

	<apicall: void 'glClear' (GLbitfield)>
	^ self externalCallFailed