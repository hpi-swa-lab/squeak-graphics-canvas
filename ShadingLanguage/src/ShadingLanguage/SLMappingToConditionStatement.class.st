Class {
	#name : #SLMappingToConditionStatement,
	#superclass : #SLMappingToCondition,
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:26'
}
SLMappingToConditionStatement >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode conditionStatement: isNegated.
]
