Class {
	#name : #SLMappingToCall,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMappingToCall >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode call: targetSelector.
]
