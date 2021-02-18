Extension { #name : #Color }

{
	#category : #'*OpenGLObjects',
	#timestamp : 'stlu 10/27/2020 11:50'
}
Color >> putAtUniform: location [

	^ self asVectorColor putAtUniform: location
]

{
	#category : #'*OpenGLObjects',
	#timestamp : 'stlu 1/6/2021 11:23'
}
Color >> setAsValueOfUniform: aUniform [

	self asVectorColor setAsValueOfUniform: aUniform
]
