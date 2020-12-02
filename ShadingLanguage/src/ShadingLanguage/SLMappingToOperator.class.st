Class {
	#name : #SLMappingToOperator,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:03'
}
SLMappingToOperator >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode operator: targetSelector
]
