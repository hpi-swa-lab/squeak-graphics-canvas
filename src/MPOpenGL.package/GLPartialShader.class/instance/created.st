shader lifecycle
created
	| shaderInstance shaderCode |
	shaderInstance := gl glCreateShader: self kind.
	shaderCode := NestedString externalNew
			string: code asUtf8ExternalData; yourself.
	gl glShaderSource: shaderInstance with: 1 with: shaderCode with: nil.
	gl glCompileShader: shaderInstance.
	^shaderInstance.