Extension { #name : #Point }

{ #category : #'*MPOpenGL' }
Point >> putAtGL: gl Uniform: location [
	gl glUniform2f: location with: x asFloat with: y asFloat
]
