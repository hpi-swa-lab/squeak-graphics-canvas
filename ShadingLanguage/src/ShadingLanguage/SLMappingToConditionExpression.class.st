Class {
	#name : #SLMappingToConditionExpression,
	#superclass : #SLMappingToCondition,
	#category : #'ShadingLanguage-Core'
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:26'
}
SLMappingToConditionExpression >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode conditionExpression: isNegated.
]
