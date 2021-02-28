Class {
	#name : #SLMappingToArrayRead,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:25'
}
SLMappingToArrayRead >> generate: aMessageNode for: aGenerator [

	aGenerator generateArrayRead: aMessageNode.
]
