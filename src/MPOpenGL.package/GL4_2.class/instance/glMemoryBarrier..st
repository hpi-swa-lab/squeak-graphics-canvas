commands
glMemoryBarrier: barriers

	<apicall: void 'glMemoryBarrier' (GLbitfield)>
	^ self externalCallFailed