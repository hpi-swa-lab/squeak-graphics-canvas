initialization
step

	| mvpUniform extentUniform |
	ogl makeCurrentDuring: [
		ogl beginFrame.
		
		ogl glActiveTexture: GL_TEXTURE0.
		ActiveWorld redrawFrame.
		
		ogl checkForError.
		"--- this is the actual scene content ---"
		ogl glDisable: GL_DEPTH_TEST.
		ogl checkForError.
		ogl
			glClearColor: 1.0
			with: 0.0
			with: 1.0
			with: 1.0.
		ogl checkForError.
		ogl glEnable: GL_BLEND.
		ogl glBlendFunc: GL_SRC_ALPHA with: GL_ONE_MINUS_SRC_ALPHA.
		ogl glClear: GL_COLOR_BUFFER_BIT.
		ogl checkForError.
		program use.
		ogl checkForError.
		vao bind: ogl.
		ogl glBindBuffer: GL_ARRAY_BUFFER with: vbo id.
		ogl checkForError.
		program vertexAttib: 0 value: vbo stride: 4 offset: 0.
		ogl checkForError.
		program vertexAttib: 1 value: vbo stride: 4 offset: 2.
		ogl checkForError.
		ogl glViewport: 0 with: 0 with: ActiveWorld width with: ActiveWorld height.
		
		"program
			uniform: (ogl glGetUniformLocation: program id with: 'image')
			value: 0."
		
		ogl glActiveTexture: GL_TEXTURE0.
		
		mvpUniform := ogl glGetUniformLocation: program id with: 'mvp'.
		extentUniform := ogl glGetUniformLocation: program id with: 'scale'.
		
		RtOpenGLVisitor new
			rootMatrix: (Matrix4x4 withOffset: -1 @ 1 @ 0) * (Matrix4x4 withScale: (2.0 / ActiveWorld width) @ (-2.0 / ActiveWorld height) @ 1.0);
			drawCallback: [:transform :form |
				program
					uniform: mvpUniform
					value: transform.
				program
					uniform: extentUniform
					value: (Vector2 x: form width asFloat y: form height asFloat).
				tex bind.
				tex texImage: form.
				vbo draw: GL_TRIANGLE_STRIP];
			visitLayer: ActiveWorld groupLayer.
		
		ogl checkForError.
		"--- end the end frame operations"
		ogl endFrame.
		ogl swapBuffers.
		ogl checkForError ]
	