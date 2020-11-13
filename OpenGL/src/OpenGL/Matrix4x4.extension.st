Extension { #name : #Matrix4x4 }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/13/2020 16:21'
}
Matrix4x4 >> putAtUniform: location [

	GL uniformMatrix4fv: location with: 1 with: true with: self
]
