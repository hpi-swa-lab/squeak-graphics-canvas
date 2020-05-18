initialize-release
deleteShaders: someShaders
	someShaders do: [:shader |
		gl glDeleteShader: shader]