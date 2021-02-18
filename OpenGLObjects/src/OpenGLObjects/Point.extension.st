Extension { #name : #Point }

{
	#category : #'*OpenGLObjects',
	#timestamp : 'stlu 11/3/2020 15:42'
}
Point >> putAtUniform: location [

	GL uniform2f: location with: x asFloat with: y asFloat
]

{
	#category : #'*OpenGLObjects',
	#timestamp : 'stlu 1/6/2021 11:24'
}
Point >> setAsValueOfUniform: aUniform [

	(Vector2 x: x y: y) setAsValueOfUniform: aUniform
]
