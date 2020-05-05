testing
testOpenGLVersion
	"given"
	"when"
	| ver |
	ver := GL glGetString: GL GL_VERSION.
	"then"
	self assert: (ver beginsWith: '4.6.0').