initialization
initializeProgram
	program := GLProgram
						newFor: ogl
						shaders: {
							VertexShader code: self vertexShader.
							FragmentShader code: self fragmentShader }.
	ogl checkForError.
		
	mvpUniform := ogl glGetUniformLocation: program id with: 'mvp'.