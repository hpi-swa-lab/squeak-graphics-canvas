Extension { #name : #Float32Array }

{ #category : #'*OpenGL' }
Float32Array >> putAtGL: gl Uniform: location [

	self size caseOf: {
		[2] -> [gl glUniform2f: location with: self first with: self second].
		[3] -> [gl glUniform3f: location with: self first with: self second with: self third].
		[4] -> [gl glUniform4f: location with: self first with: self second with: self third with: self fourth]
	}
]
