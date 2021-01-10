Class {
	#name : #SLMappingToArrayWrite,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 1/10/2021 17:24'
}
SLMappingToArrayWrite >> generate: aMessageNode for: aGenerator [
	aGenerator generateArrayWrite: aMessageNode
]
