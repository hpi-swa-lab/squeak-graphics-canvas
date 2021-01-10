Class {
	#name : #SLMappingToConditionStatement,
	#superclass : #SLMappingToCondition,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 19:43'
}
SLMappingToConditionStatement >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode conditionStatement: isNegated
]
