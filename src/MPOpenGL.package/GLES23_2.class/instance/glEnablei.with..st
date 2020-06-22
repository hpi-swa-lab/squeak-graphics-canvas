commands
glEnablei: target with: index

	<apicall: void 'glEnablei' (GLenum GLuint)>
	^ self externalCallFailed