shader lifecycle
created

	| shaderInstance shaderCode status data utf8 |
	shaderInstance := gl glCreateShader: self kind.
	
	" NOTE: data needs to stay in this method as it is gcallocate'd "
	utf8 := code utf8Encoded.
	data := ExternalData
				fromHandle: (ExternalAddress gcallocate: utf8 size + 1)
				type: ExternalType string.
	1 to: utf8 size do: [:index |
		data getHandle byteAt: index put: (utf8 at: index)].
	data getHandle byteAt: utf8 size + 1 put: 0.
	self flag: #todo. " WTF???? ulonglong abuse for a pointer??? (once Marcel figured out char** we should make this clean) "
	shaderCode := ExternalData
						fromHandle: (ExternalAddress gcallocate: 8)
						type: ExternalType unsignedLongLong.
	shaderCode unsignedLongLongAt: 1 put: data getHandle asInteger.
	
	gl glShaderSource: shaderInstance with: 1 with: (shaderCode asType: ExternalType string) with: nil.
	gl glCompileShader: shaderInstance.
	
	status := IntegerArray new: 1.
	gl glGetShaderiv: shaderInstance with: GL_COMPILE_STATUS with: status.
	status first = 0 ifTrue: [
		self error: self asString , ' shader failed to compile: ', (self getShaderInfoLog: shaderInstance)].
	
	^ shaderInstance