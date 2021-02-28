Class {
	#name : #SLMappingToCall,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'zagto 2/28/2021 19:25'
}
SLMappingToCall >> generate: aMessageNode for: aGenerator [

	aGenerator generate: aMessageNode call: targetSelector.
]
