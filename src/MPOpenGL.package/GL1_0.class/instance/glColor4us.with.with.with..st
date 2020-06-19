commands
glColor4us: red with: green with: blue with: alpha

	<apicall: void 'glColor4us' (GLushort GLushort GLushort GLushort)>
	^ self externalCallFailed