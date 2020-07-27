Extension { #name : #Color }

{ #category : #'*MPOpenGL-Shaders' }
Color >> putAtGL: gl Uniform: location [

	^ self asVectorColor putAtGL: gl Uniform: location
]
