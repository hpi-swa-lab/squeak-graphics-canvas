shader lifecycle
created
	| shaderInstance |
	shaderInstance := gl glCreateShader: self kind.
	gl glShaderSource: shaderInstance with: 1 with: code with: nil.
	gl glCompileShader: shaderInstance.
	^shaderInstance.