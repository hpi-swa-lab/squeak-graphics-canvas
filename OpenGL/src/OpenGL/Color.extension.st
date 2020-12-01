Extension { #name : #Color }

{
	#category : #'*OpenGL',
	#timestamp : ''
}
Color >> putAtUniform: location [

	^ self asVectorColor putAtUniform: location
]
