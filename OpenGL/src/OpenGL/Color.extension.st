Extension { #name : #Color }

{
	#category : #'*OpenGL',
	#timestamp : 'stlu 10/27/2020 11:50'
}
Color >> putAtUniform: location [

	^ self asVectorColor putAtUniform: location
]
