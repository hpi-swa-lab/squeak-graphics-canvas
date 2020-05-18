shader lifecycle
created
	| shaderInstance shaderCode status |
	shaderInstance := gl glCreateShader: self kind.
	shaderCode := NestedString externalNew
			string: self codeAsUtf8ExternalData; yourself.
	gl glShaderSource: shaderInstance with: 1 with: shaderCode with: nil.
	gl glCompileShader: shaderInstance.
	
		status := IntegerArray new: 1.
		gl glGetShaderiv: shaderInstance with: gl GL_COMPILE_STATUS with: status.
		(status at: 1) = 0 ifTrue: [
		self error: self asString , ' shader failed to compile: ', (self getShaderInfoLog: shaderInstance)].
	^shaderInstance.