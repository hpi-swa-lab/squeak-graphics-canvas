Extension { #name : #Float }

{ #category : #'*OpenGL' }
Float >> putAtUniform: location [

	GL uniform1f: location with: self
]
