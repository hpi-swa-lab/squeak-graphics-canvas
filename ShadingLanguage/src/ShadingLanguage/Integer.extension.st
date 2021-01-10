Extension { #name : #Integer }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 11:51'
}
Integer >> asGLSLLiteral [

	^ self asString
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 11:49'
}
Integer >> glslType [

	^ GLSLInteger instance
]
