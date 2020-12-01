Class {
	#name : #SLMappingToControlFlow,
	#superclass : #SLMessageMapping,
	#instVars : [
		'isNegated'
	],
	#category : #ShadingLanguage,
	#commentStamp : ''
}

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 16:28'
}
SLMappingToControlFlow >> isNegated [

	^ isNegated
]

{
	#category : #accessing,
	#timestamp : 'zagto 12/1/2020 16:28'
}
SLMappingToControlFlow >> isNegated: anObject [

	isNegated := anObject
]
