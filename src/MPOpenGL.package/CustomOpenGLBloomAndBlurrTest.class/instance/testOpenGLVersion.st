testing
testOpenGLVersion
	self assert: ((GL glGetString: GL GL_VERSION) beginsWith: '4.6.0')