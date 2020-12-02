Class {
	#name : #SLMappingToCall,
	#superclass : #SLMessageMapping,
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #generation,
	#timestamp : 'stlu 12/2/2020 03:00'
}
SLMappingToCall >> generate: aMessageNode for: aGenerator [
	aGenerator generate: aMessageNode call: targetSelector
]
