Extension { #name : #Integer }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 1/10/2021 11:51'
}
Integer >> asGLSLLiteral [

	^ self asString
]

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 1/10/2021 11:49'
}
Integer >> glslType [

	^ GLSLInteger instance
]
