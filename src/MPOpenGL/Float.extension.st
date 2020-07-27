Extension { #name : #Float }

{ #category : #'*MPOpenGL' }
Float >> putAtGL: gl Uniform: location [
	gl glUniform1f: location with: self
]
