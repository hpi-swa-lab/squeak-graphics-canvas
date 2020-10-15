Extension { #name : #Boolean }

{ #category : #'*OpenGL' }
Boolean >> putAtGL: gl Uniform: location [

	gl glUniform1ui: location with: self asNumber
]
