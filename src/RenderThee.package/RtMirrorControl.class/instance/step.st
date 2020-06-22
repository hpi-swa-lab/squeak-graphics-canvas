initialization
step

	ogl makeCurrentDuring: [
		ogl beginFrame.
		
		ogl glActiveTexture: GL_TEXTURE0.
		ActiveWorld redrawFrame.
		tex texImage: ActiveWorld drawLayer assuredForm.
		
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
		
		tex bind.
		
		program
			uniform: (ogl glGetUniformLocation: program id with: 'mvp')
			value: (Matrix identity: 4).
		program
			uniform: (ogl glGetUniformLocation: program id with: 'image')
			value: 0.

		ogl checkForError.
		
		vbo draw: GL_TRIANGLE_STRIP.
		ogl checkForError.
		
		tex unbind.
		
		ogl checkForError.
		"--- end the end frame operations"
		ogl endFrame.
		ogl swapBuffers.
		ogl checkForError ]
	