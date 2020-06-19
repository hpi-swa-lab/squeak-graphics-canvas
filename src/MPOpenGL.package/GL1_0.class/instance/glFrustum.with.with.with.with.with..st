commands
glFrustum: left with: right with: bottom with: top with: zNear with: zFar

	<apicall: void 'glFrustum' (GLdouble GLdouble GLdouble GLdouble GLdouble GLdouble)>
	^ self externalCallFailed