Extension { #name : #Integer }

{ #category : #'*OpenGL' }
Integer >> putAtGL: gl Uniform: location [

	gl glUniform1i: location with: self
]
