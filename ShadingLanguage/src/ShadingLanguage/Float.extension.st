Extension { #name : #Float }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'zagto 11/24/2020 16:58'
}
Float >> asGLSLLiteral [
	^ self asString.
]
