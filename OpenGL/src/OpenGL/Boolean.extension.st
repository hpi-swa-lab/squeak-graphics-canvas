Extension { #name : #Boolean }

{ #category : #'*OpenGL' }
Boolean >> putAtUniform: location [

	GL uniform1ui: location with: self asNumber
]
