commands
glColorMask: red with: green with: blue with: alpha

	<apicall: void 'glColorMask' (GLboolean GLboolean GLboolean GLboolean)>
	^ self externalCallFailed