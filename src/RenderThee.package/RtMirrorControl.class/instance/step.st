initialization
step
 			tex form: (Display copy: ActiveWorld bounds).
			ogl beginFrame.
			ogl installTexture: tex.
			ogl checkForError.
			"uploads only in first frame"
			"ogl enableTexture: tex."
			ogl checkForError.
			"--- this is the actual scene content ---"
			ogl glDisable: ogl GL_DEPTH_TEST.
			ogl checkForError.
			ogl
				glClearColor: 1.0
				with: 0.0
				with: 1.0
				with: 1.0.
			ogl checkForError.
			ogl glClear: ogl GL_COLOR_BUFFER_BIT.
			ogl checkForError.
			program use.
			ogl checkForError.
			vao bind: ogl.
			ogl glBindBuffer: ogl GL_ARRAY_BUFFER with: vbo id.
			ogl checkForError.
			program vertexAttib: 0 value: vbo stride: 4 offset: 0.
			ogl checkForError.
			program vertexAttib: 1 value: vbo stride: 4 offset: 2.
			ogl checkForError.
			program
				uniform: (ogl glGetUniformLocation: program id with: 'mvp')
				value: (Matrix identity: 4).
			program
				uniform: (ogl glGetUniformLocation: program id with: 'image')
				value: 0.
			"program uniform: 0 value: (Matrix identity: 4)."
			ogl checkForError.
			vbo draw: ogl GL_TRIANGLE_STRIP.
			ogl checkForError.
			
			ogl checkForError.
			"--- end the end frame operations"
			ogl endFrame.
			ogl swapBuffers.
			ogl checkForError.
	