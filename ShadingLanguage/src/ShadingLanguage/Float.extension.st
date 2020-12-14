Extension { #name : #Float }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 11/24/2020 16:58'
}
Float >> asGLSLLiteral [
	^ self asString.
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 12/14/2020 16:56'
}
Float >> glslType [
	^ GLSLFloat instance
]
