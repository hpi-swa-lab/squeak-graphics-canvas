Extension { #name : #Matrix }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/13/2020 16:21'
}
Matrix >> putAtUniform: location [

	(ncols = 4 and: [nrows = 4]) ifTrue: [
		^ GL uniformMatrix4fv: location with: 1 with: false with: self asFloat32Array].
	self notYetImplemented
]
