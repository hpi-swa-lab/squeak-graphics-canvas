Extension { #name : #Color }

{ #category : #'*OpenGL' }
Color >> putAtGL: gl Uniform: location [

	^ self asVectorColor putAtGL: gl Uniform: location
]
