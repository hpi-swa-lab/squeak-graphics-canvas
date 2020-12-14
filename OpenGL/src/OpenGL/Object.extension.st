Extension { #name : #Object }

{
	#category : #'*OpenGL-Wrappers',
	#timestamp : 'stlu 11/23/2020 16:03'
}
Object >> setAsValueOfUniform: aUniform [

	aUniform setToObject: self
]
