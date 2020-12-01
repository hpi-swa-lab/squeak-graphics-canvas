Extension { #name : #Matrix4x4 }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Matrix4x4 >> putAtUniform: location [

	GL uniformMatrix4fv: location with: 1 with: true with: self
]
