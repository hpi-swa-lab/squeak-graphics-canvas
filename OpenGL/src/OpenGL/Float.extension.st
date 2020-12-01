Extension { #name : #Float }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/3/2020 15:29'
}
Float >> putAtUniform: location [

	GL uniform1f: location with: self
]
