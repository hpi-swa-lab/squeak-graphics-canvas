Extension { #name : #Integer }

{ #category : #'*OpenGL' }
Integer >> putAtUniform: location [

	GL uniform1i: location with: self
]
