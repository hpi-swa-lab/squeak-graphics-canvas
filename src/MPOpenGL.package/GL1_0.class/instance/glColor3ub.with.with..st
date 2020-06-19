commands
glColor3ub: red with: green with: blue

	<apicall: void 'glColor3ub' (GLubyte GLubyte GLubyte)>
	^ self externalCallFailed