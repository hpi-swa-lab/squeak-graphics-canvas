Extension { #name : #Integer }

{ #category : #'*MPOpenGL' }
Integer >> putAtGL: gl Uniform: location [
	gl glUniform1i: location with: self
]
