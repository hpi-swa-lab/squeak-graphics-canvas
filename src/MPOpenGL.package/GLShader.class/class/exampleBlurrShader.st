example
exampleBlurrShader
	| gl shader |
	gl := GL4_6 new.
	shader := self newFor: gl.
	shader
		shaders: (OrderedCollection
				with: (VertexShader file: 'blur.vs')
				with: (FragmentShader file: 'blur.fs')).
	shader setUpProgram.
	^shader