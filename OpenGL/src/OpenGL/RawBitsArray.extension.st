Extension { #name : #RawBitsArray }

{
	#category : #'*OpenGL-Wrappers',
	#timestamp : 'stlu 11/23/2020 16:04'
}
RawBitsArray >> setAsValueOfUniform: aUniform [

	aUniform setToArray: self
]
