test
testOpenGLVersion
	"given"
	"when"
	| glVersion |
	glVersion := GL glGetString: GL GL_VERSION.
	glVersion inspect.
	"then"
	self assert: (glVersion beginsWith: '4.6.0').