initialize-release
attachShaders
	^shaders collect: [:shader |
		gl glAttachShader: id with: shader created]