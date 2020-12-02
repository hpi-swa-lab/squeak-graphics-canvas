Class {
	#name : #SLMappingToComponentAssignments,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:01'
}
SLMappingToComponentAssignments >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode componentWrite: targetSelector
]
