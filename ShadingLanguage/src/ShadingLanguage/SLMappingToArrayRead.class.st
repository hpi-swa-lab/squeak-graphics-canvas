Class {
	#name : #SLMappingToArrayRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#'squeak_changestamp' : ''
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMappingToArrayRead >> generate: aMessageNode for: aGenerator [

	aGenerator generateArrayRead: aMessageNode.
]
