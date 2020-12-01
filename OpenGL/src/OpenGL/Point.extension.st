Extension { #name : #Point }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/3/2020 15:42'
}
Point >> putAtUniform: location [

	GL uniform2f: location with: x asFloat with: y asFloat
]
