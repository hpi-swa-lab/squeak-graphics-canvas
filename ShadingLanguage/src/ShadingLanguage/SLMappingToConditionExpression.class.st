Class {
	#name : #SLMappingToConditionExpression,
	#superclass : #SLMappingToCondition,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 19:43'
}
SLMappingToConditionExpression >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode conditionExpression: isNegated
]
