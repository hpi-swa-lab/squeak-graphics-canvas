Extension { #name : #Boolean }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 11/3/2020 15:29'
}
Boolean >> putAtUniform: location [

	GL uniform1ui: location with: self asNumber
]
