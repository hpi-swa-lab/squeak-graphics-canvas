Extension { #name : #Float }

{ #category : #'*OpenGL' }
Float >> putAtGL: gl Uniform: location [

	gl glUniform1f: location with: self
]
