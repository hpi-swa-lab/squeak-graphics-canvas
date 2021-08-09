Class {
	#name : #SLMappingToArrayWrite,
	#superclass : #SLMessageMapping,
	#category : #'ShadingLanguage-Core'
}

{
	#category : #generation,
	#'squeak_changestamp' : 'zagto 2/28/2021 19:25'
}
SLMappingToArrayWrite >> generate: aMessageNode for: aGenerator [

	aGenerator generateArrayWrite: aMessageNode.
]
