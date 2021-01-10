Extension { #name : #Boolean }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 21:13'
}
Boolean >> asGLSLLiteral [

	^ self asString
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'stlu 1/10/2021 21:13'
}
Boolean >> glslType [

	^ GLSLBoolean instance
]
