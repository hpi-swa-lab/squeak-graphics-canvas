OpenGL global check
checkOpenGLVersion 
	| version versionString |
	version := ogl glGetString: ogl GL_VERSION.
	versionString := version fromCString.
	self assert: (versionString startsWith: '4').