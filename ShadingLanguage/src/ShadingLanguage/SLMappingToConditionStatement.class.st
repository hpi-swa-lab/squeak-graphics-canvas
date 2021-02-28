Class {
	#name : #SLMappingToConditionStatement,
	#superclass : #SLMappingToCondition,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:26'
}
SLMappingToConditionStatement >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode conditionStatement: isNegated.
]
