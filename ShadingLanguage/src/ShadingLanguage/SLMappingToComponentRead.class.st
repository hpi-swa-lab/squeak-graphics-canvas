Class {
	#name : #SLMappingToComponentRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:01'
}
SLMappingToComponentRead >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode componentRead: targetSelector
]
