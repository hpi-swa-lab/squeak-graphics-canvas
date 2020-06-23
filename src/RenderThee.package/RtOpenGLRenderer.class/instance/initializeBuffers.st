initialization
initializeBuffers
		vao := GLVertexArrayObject newFor: ogl.
		vao bind: ogl.
		vbo := GLBuffer new.
		vbo
			data: {
				0. 0. 0 . 0 .
				1.  0. 1 . 0 .
				0. 1. 0 . 1	.
				1.   1. 1 . 1
			} asFloat32Array
			usage: GL_STATIC_DRAW
			componentsPerVertex: 4.
	
		ogl checkForError.