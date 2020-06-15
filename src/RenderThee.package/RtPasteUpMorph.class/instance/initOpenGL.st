initialize-release
initOpenGL

	self log: 'initOpenGL'.
	ogl := GL4_6 newIn: self bounds.
	ogl ifNil: [^ false].
	self log: 'created ogl'.
	program := GLProgram newFor: ogl shaders: {
					VertexShader code: self vertexShader.
					FragmentShader code: self fragmentShader}.
	ogl errorString ifNotNil: [:str | self log: str].
	program ifNil: [^ false].
	self log: 'created program'.
	vao := GLVertexArrayObject newFor: ogl.
	vao ifNil: [^ false].
	self log: 'created vao'.
	vbo := GLBuffer newFor: ogl.
	vbo ifNil: [^ false].
	self log: 'created vbo'.
	vao bind: ogl.
	self log: 'bind vao'.
	vbo
		data: {
			-1. -1. 0 . 0 .
			1.  -1. 0 . 1 .
			-1. 1. 1 . 0	.
			1.   1. 1 . 1
		} asFloatArray
		usage: ogl GL_STATIC_DRAW
		componentsPerVertex: 4.
	self log: 'uploaded data'.
	ogl glDisable: ogl GL_CULL_FACE.
	self log: 'disabled cull face'.
	^ true