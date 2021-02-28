Class {
	#name : #SLMappingToComponentWrite,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:26'
}
SLMappingToComponentWrite >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode componentWrite: targetSelector.
]
