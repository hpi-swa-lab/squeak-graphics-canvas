commands
glGenerateMipmap: target

	<apicall: void 'glGenerateMipmap' (GLenum)>
	^ self externalCallFailed