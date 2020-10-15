Extension { #name : #Point }

{ #category : #'*OpenGL' }
Point >> putAtGL: gl Uniform: location [

	gl glUniform2f: location with: x asFloat with: y asFloat
]
