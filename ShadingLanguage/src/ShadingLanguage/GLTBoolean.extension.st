Extension { #name : #GLTBoolean }

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLTBoolean >> ifFalse: aType [
	^ SLMappingToCondition new isNegated: true
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLTBoolean >> ifFalse: aType ifTrue: anotherType [
	^ SLMappingToCondition new isNegated: true
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLTBoolean >> ifTrue: aType [
	^ SLMappingToCondition new isNegated: false
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:31'
}
GLTBoolean >> ifTrue: aType ifFalse: anotherType [
	^ SLMappingToCondition new isNegated: false
]

{
	#category : #'*ShadingLanguage',
	#timestamp : 'zagto 12/1/2020 16:58'
}
GLTBoolean >> negated [
	self shouldNotImplement
]
