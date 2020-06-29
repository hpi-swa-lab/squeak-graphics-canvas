initialization
initialize
	super initialize.
	
	RtRecordingCanvas record: ActiveWorld.
	
	ogl := GL3_3 newInGLFW: ActiveWorld bounds.
	
	self currentExtent: ActiveWorld extent.
	
	
	ogl makeCurrentDuring: [
		self initializeProgram.
		self initializeBuffers.
		ogl glDisable: GL_CULL_FACE.
		ogl glDisable: GL_DEPTH_TEST.
		ogl glActiveTexture: GL_TEXTURE0.
		ogl
			glClearColor: 1.0
			with: 0.0
			with: 1.0
			with: 1.0.
		ogl glEnable: GL_BLEND.
		ogl glBlendFunc: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA.
		
		
		program use.
		ogl checkForError.
		
		vao bind: ogl.
		ogl checkForError.
		
		ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
		ogl checkForError.
		
		program vertexAttib: 0 value: vbo stride: 4 offset: 0.
		ogl checkForError.
		
		program vertexAttib: 1 value: vbo stride: 4 offset: 2.
		ogl checkForError.

		"program
			uniform: (ogl glGetUniformLocation: program id with: 'image')
			value: 0."
		
		ogl checkForError ]