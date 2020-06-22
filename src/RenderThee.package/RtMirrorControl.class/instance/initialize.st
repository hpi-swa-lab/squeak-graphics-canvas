initialization
initialize
	super initialize.
	
	self extent: 200@200.
	
	ogl := GL3_3 newInGLFW: Display bounds.
	
	ogl makeCurrentDuring: [
		tex := GLTexture new.
		program := GLProgram
						newFor: ogl
						shaders: {
							VertexShader code: self vertexShader.
							FragmentShader code: self fragmentShader }.
		ogl checkForError.
		vao := GLVertexArrayObject newFor: ogl.
		vao bind: ogl.
		vbo := GLBuffer newFor: ogl.
		vbo
			data: {
				-1. -1. 0 . 1 .
				1.  -1. 1 . 1 .
				-1. 1. 0 . 0	.
				1.   1. 1 . 0
			} asFloat32Array
			usage: GL_STATIC_DRAW
			componentsPerVertex: 4.
		ogl glDisable: GL_CULL_FACE.
		ogl checkForError ]