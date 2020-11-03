Extension { #name : #Point }

{ #category : #'*OpenGL' }
Point >> putAtUniform: location [

	GL uniform2f: location with: x asFloat with: y asFloat
]
