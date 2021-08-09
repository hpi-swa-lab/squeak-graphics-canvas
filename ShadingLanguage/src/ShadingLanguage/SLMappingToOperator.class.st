Class {
	#name : #SLMappingToOperator,
	#superclass : #SLMessageMapping,
	#category : #'ShadingLanguage-Core'
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:26'
}
SLMappingToOperator >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode operator: targetSelector.
]
