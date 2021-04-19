Extension { #name : #GLSLBoolean }

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'zagto 12/1/2020 16:58'
}
GLSLBoolean >> negated [
	self shouldNotImplement
]

{
	#category : #'*ShadingLanguage',
	#'squeak_changestamp' : 'stlu 1/10/2021 13:14'
}
GLSLBoolean >> or: aType [
	^ SLMappingToOperator new
		type: self;
		targetSelector: #'||'
]
