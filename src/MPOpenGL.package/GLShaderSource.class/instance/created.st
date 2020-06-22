shader lifecycle
created

	| utf8 |
	utf8 := code utf8Encoded.
	
	^ ExternalData allocate: utf8 size + 1 type: ExternalType string do: [:data | | shaderCode shaderInstance status |
		shaderInstance := gl glCreateShader: self kind.
		
		1 to: utf8 size do: [:index |
			data getHandle byteAt: index put: (utf8 at: index)].
		data getHandle byteAt: utf8 size + 1 put: 0.
		
		shaderCode := (ByteArray new: ExternalType void asPointerType byteSize)
	 	pointerAt: 1 put: data getHandle;
		yourself.
	
		gl glShaderSource: shaderInstance with: 1 with: shaderCode with: nil.
		gl glCompileShader: shaderInstance.
		
		status := IntegerArray new: 1.
		gl glGetShaderiv: shaderInstance with: GL_COMPILE_STATUS with: status.
		status first = 0 ifTrue: [
			self error: self asString , ' shader failed to compile: ', (self getShaderInfoLog: shaderInstance)].
	
		shaderInstance]