Class {
	#name : #SLMappingToResourceRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:26'
}
SLMappingToResourceRead >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode resourceRead: targetSelector.
]
