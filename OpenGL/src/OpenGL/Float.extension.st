Extension { #name : #Float }

{
	#category : #'*OpenGL-Wrappers',
	#timestamp : 'stlu 12/14/2020 16:56'
}
Float >> glslType [
	^ GLSLFloat instance
]

{
	#category : #'*OpenGL-Wrappers',
	#timestamp : 'stlu 11/3/2020 15:29'
}
Float >> putAtUniform: location [

	GL uniform1f: location with: self
]
