Extension { #name : #Matrix }

{ #category : #'*OpenGL' }
Matrix >> putAtGL: gl Uniform: location [

	(ncols = 4 and: [nrows = 4]) ifTrue: [
		^ gl glUniformMatrix4fv: location with: 1 with: GLConstants GL_FALSE with: self asFloat32Array].
	self notYetImplemented
]
