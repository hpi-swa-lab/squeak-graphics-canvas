OpenGL global check
checkOpenGLVersion 
	| version |
	version := ogl glGetString: ogl GL_VERSION.
	self assert: (version startsWith: '4').