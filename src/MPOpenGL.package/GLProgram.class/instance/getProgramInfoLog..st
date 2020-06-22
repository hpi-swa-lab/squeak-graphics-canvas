usage
getProgramInfoLog: program

	| infoLogLength infoLog |
	infoLogLength := 4096.
	infoLog := ExternalData fromHandle: (ExternalAddress gcallocate: infoLogLength) type: ExternalType string.
	gl glGetProgramInfoLog: program with: infoLogLength with: nil with: infoLog.
	^ infoLog fromCString