commands
glCopyPixels: x with: y with: width with: height with: type

	<apicall: void 'glCopyPixels' (GLint GLint GLsizei GLsizei GLenum)>
	^ self externalCallFailed