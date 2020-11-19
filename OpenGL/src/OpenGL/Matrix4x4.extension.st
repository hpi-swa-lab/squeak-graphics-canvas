Extension { #name : #Matrix4x4 }

{ #category : #'*OpenGL' }
Matrix4x4 >> putAtUniform: location [

	GL uniformMatrix4fv: location with: 1 with: true with: self
]
