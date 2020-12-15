Class {
	#name : #SLMappingToResourceAssignments,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:37'
}
SLMappingToResourceAssignments >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode resourceWrites: targetSelector
]
