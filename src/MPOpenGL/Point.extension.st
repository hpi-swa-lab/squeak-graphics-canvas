Extension { #name : #Point }

{ #category : #'*MPOpenGL' }
Point >> putAtGL: gl Uniform: location [
	gl glUniform2f: location with: self x with: self y
]
