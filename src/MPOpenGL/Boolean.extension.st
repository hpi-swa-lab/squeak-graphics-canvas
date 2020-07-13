Extension { #name : #Boolean }

{ #category : #'*MPOpenGL' }
Boolean >> putAtGL: gl Uniform: location [

	gl glUniform1ui: location with: self asNumber
]
