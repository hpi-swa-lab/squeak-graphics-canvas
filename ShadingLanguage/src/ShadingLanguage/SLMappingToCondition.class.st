Class {
	#name : #SLMappingToCondition,
	#superclass : #SLMappingToControlFlow,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:03'
}
SLMappingToCondition >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode condition: isNegated
]
