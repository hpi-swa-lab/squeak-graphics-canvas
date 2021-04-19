Class {
	#name : #SLMappingToComponentRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMappingToComponentRead >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode componentRead: targetSelector.
]
