Extension { #name : #Boolean }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Boolean >> putAtUniform: location [

	GL uniform1ui: location with: self asNumber
]
