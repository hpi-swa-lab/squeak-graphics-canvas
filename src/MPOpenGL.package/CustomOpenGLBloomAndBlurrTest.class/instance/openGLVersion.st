test
openGLVersion
	| glVersion |
	glVersion := GL glGetString: GL GL_VERSION.
	glVersion inspect.
	self assert: glVersion notNil.
	self assert: (glVersion startsWith: '4.6')