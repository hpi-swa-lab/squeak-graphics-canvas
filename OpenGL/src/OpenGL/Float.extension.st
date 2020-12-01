Extension { #name : #Float }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Float >> putAtUniform: location [

	GL uniform1f: location with: self
]
