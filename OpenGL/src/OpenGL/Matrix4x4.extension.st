Extension { #name : #Matrix4x4 }

{ #category : #'*OpenGL' }
Matrix4x4 >> putAtGL: gl Uniform: location [

	gl glUniformMatrix4fv: location with: 1 with: GLConstants GL_TRUE with: self
]
