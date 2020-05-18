example
exampleBlurShader
	| gl shader |
	gl := GL4_6 new.
	shader := self newFor: gl shaders: (OrderedCollection
				with: (VertexShader file: 'blur.vs')
				with: (FragmentShader file: 'blur.fs')).
	^shader