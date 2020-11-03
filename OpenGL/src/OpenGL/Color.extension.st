Extension { #name : #Color }

{ #category : #'*OpenGL' }
Color >> putAtUniform: location [

	^ self asVectorColor putAtUniform: location
]
