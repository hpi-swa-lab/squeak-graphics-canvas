commands
glColor4ub: red with: green with: blue with: alpha

	<apicall: void 'glColor4ub' (GLubyte GLubyte GLubyte GLubyte)>
	^ self externalCallFailed