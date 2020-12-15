Class {
	#name : #SLMappingToResourceRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:04'
}
SLMappingToResourceRead >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode resourceRead: targetSelector
]
