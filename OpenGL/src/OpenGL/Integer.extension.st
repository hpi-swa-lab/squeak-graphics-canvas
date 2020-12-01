Extension { #name : #Integer }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Integer >> putAtUniform: location [

	GL uniform1i: location with: self
]
