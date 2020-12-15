Extension { #name : #Float }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 11/24/2020 16:58'
}
Float >> asGLSLLiteral [
	^ self asString.
]
