code from file
getShaderInfoLog: vertexShader

	| infoLogLength infoLog |
	infoLogLength := 4096.
	infoLog := ExternalData fromHandle: (ExternalAddress gcallocate: infoLogLength) type: ExternalType string.
	gl glGetShaderInfoLog: vertexShader with: infoLogLength with: nil with: infoLog.
	^ infoLog fromCString