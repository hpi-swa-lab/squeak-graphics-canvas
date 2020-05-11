testing
testOpenGLVersion
	| glVersion |
	glVersion := (GL glGetString: GL GL_VERSION).
	self assert: glVersion notNil.
	self assert: (glVersion startsWith: '4.6.0')