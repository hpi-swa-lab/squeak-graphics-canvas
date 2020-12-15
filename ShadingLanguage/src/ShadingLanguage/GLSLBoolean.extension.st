Extension { #name : #GLSLBoolean }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLSLBoolean >> ifFalse: aType [
	^ SLMappingToCondition new isNegated: true
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLSLBoolean >> ifFalse: aType ifTrue: anotherType [
	^ SLMappingToCondition new isNegated: true
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLSLBoolean >> ifTrue: aType [
	^ SLMappingToCondition new isNegated: false
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLSLBoolean >> ifTrue: aType ifFalse: anotherType [
	^ SLMappingToCondition new isNegated: false
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:58'
}
GLSLBoolean >> negated [
	self shouldNotImplement
]
