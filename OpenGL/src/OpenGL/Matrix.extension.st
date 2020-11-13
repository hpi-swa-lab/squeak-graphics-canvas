Extension { #name : #Matrix }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/3/2020 15:41'
}
Matrix >> putAtUniform: location [

	(ncols = 4 and: [nrows = 4]) ifTrue: [
		^ GL uniformMatrix4fv: location with: 1 with: GLConstants GL_FALSE with: self asFloat32Array].
	self notYetImplemented
]
