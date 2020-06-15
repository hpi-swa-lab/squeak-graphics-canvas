test
test_example
	<timeout: 5>
	| frames startTime deltaTime framesPerSec program vbo vao mvp tex |
	frames := 0.
	startTime := Time millisecondClockValue.
	tex := OGLTexture new
				form: (Display
						copy: (bounds)).
	program := GLProgram newFor: ogl shaders: {VertexShader code: self vertexShader. FragmentShader code: self fragmentShader }.
	ogl checkForError.
	vao := GLVertexArrayObject newFor: ogl.
	vao bind: ogl.
	vbo := GLBuffer newFor: ogl.
	vbo
		data: {
			-1. -1. 0 . 0 .
			1.  -1. 0 . 1 .
			-1. 1. 1 . 0	.
			1.   1. 1 . 1
		} asFloatArray
		usage: ogl GL_STATIC_DRAW
		componentsPerVertex: 4.
	ogl glDisable: ogl GL_CULL_FACE.
	ogl checkForError.
	[Sensor anyButtonPressed]
		whileFalse: ["start counting at second frame si------**nce first frame is
			penalized by the upload of the bitmap font outside of ogl."
			frames = 1
				ifTrue: [startTime := Time millisecondClockValue].
			ogl beginFrame.
			ogl installTexture: tex.
			ogl checkForError.
			"uploads only in first frame"
			"ogl enableTexture: tex."
			ogl checkForError.
			"--- this is the actual scene content ---"
			ogl glDisable: GLDepthTest.
			ogl checkForError.
			"for the simple example only"
			"ogl glDisable: GLLighting."
			ogl checkForError.
			"for the simple example only"
			ogl
				glClearColor: 0.0
				with: 0.0
				with: 1.0
				with: 1.0.
			ogl checkForError.
			ogl glClear: GLColorBufferBit.
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
				value: (Matrix rotateZBy: "(Float pi / 2) rounded" Time utcMicrosecondClock / 100000.0).
			program
				uniform: (ogl glGetUniformLocation: program id with: 'image')
				value: 0.
			"program uniform: 0 value: (Matrix identity: 4)."
			ogl checkForError.
			vbo draw: ogl GL_TRIANGLE_STRIP.
			ogl checkForError.
			
			
			"--- here is the 2d overlay setup ---"
			mvp := (Matrix scaleX: 2.0 / bounds width y: -2.0 / bounds height)
						+* (Matrix translateX: -1 y: 1).
			"--- here is the 2d overlay rendering ---"
			deltaTime := Time millisecondsSince: startTime.
			framesPerSec := frames * 1000 / (deltaTime max: 1) asFloat.
			"@@@@: Fixme. It appears as if #drawString: depends on
			glColor being set.
			Makes no sense but I'm not going to figure this out - probably
			some mishap
			wrt. GLLighting being disabled."
			"ogl glColor3f: 0.0 with: 0.0 with: 0.0.
			ogl drawString: frames printString, ' frames: ', (framesPerSec
			truncateTo: 0.1), ' fps'
			at: 0@font height@0 font: font color: Color black."
			ogl checkForError.
			ogl glDisable: GLBlend.
			"--- end the end frame operations"
			ogl endFrame.
			ogl swapBuffers.
			ogl checkForError.
			frames := frames + 1]