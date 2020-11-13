Extension { #name : #Matrix4x4 }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/3/2020 15:41'
}
Matrix4x4 >> putAtUniform: location [

	GL uniformMatrix4fv: location with: 1 with: GLConstants GL_TRUE with: self
]
