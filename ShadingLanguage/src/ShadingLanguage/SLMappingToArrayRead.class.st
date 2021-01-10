Class {
	#name : #SLMappingToArrayRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 17:22'
}
SLMappingToArrayRead >> generate: aMessageNode for: aGenerator [
	aGenerator generateArrayRead: aMessageNode
]
